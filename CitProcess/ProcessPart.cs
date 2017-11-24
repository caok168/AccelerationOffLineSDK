using CitFileSDK;
using CitIndexFileSDK;
using CitIndexFileSDK.MileageFix;
using CommonFileSDK;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace CitProcess
{
    public partial class Process
    {
        CITFileProcess citProcess = new CITFileProcess();

        public IOperator indexOperator { get; private set; }

        private MilestoneFix _mileageFix;

        public MilestoneFix MileageFix
        {
            get { return _mileageFix; }
            set { _mileageFix = value; }
        }


        public void SaveChannelDataTxt(string citFilePath, string idfFilePath, string dbFilePath, string channleName, string exportTxtPath, double startMileage, double endMileage, int sampleCount, bool isChinese)
        {
            FileInformation citHeader = citProcess.GetFileInformation(citFilePath);

            List<ChannelDefinition> list = citProcess.GetChannelDefinitionList(citFilePath);

            int channelId = 0;
            var channelItem = list.Where(s => s.sNameEn == channleName || s.sNameCh == channleName).FirstOrDefault();
            if (channelItem != null)
            {
                channelId = channelItem.sID;
            }

            if (citHeader.iKmInc == 1 && startMileage < endMileage)
            {
                double change = startMileage;
                startMileage = endMileage;
                endMileage = change;
            }

            if (!String.IsNullOrEmpty(idfFilePath) && !String.IsNullOrEmpty(dbFilePath))
            {
                indexOperator = new IndexOperator();
                indexOperator.IndexFilePath = idfFilePath;

                InnerFileOperator.InnerFilePath = dbFilePath;
                InnerFileOperator.InnerConnString = "Provider = Microsoft.Jet.OLEDB.4.0; Data Source = {0}; Persist Security Info = True; Mode = Share Exclusive; Jet OLEDB:Database Password = iicdc; ";

                _mileageFix = new MilestoneFix(citFilePath, indexOperator);

                _mileageFix.ReadMilestoneFixTable();

                if (_mileageFix.FixData.Count > 0)
                {
                    if (citHeader.iKmInc == 0)
                    {
                        if (startMileage >= _mileageFix.FixData[_mileageFix.FixData.Count - 1].MarkedEndPoint.UserSetMileage / 1000
                            || endMileage <= _mileageFix.FixData[0].MarkedStartPoint.UserSetMileage / 1000)
                        {
                            //return "";

                            throw new Exception("此里程范围内没有修正数据：start：" + startMileage + "  end：" + endMileage);
                        }
                        if (startMileage < (_mileageFix.FixData[0].MarkedStartPoint.UserSetMileage / 1000))
                        {
                            startMileage = (_mileageFix.FixData[0].MarkedStartPoint.UserSetMileage / 1000);
                        }
                        if (endMileage > _mileageFix.FixData[_mileageFix.FixData.Count - 1].MarkedEndPoint.UserSetMileage / 1000)
                        {
                            endMileage = _mileageFix.FixData[_mileageFix.FixData.Count - 1].MarkedEndPoint.UserSetMileage / 1000;
                        }
                    }
                    else if (citHeader.iKmInc == 1)
                    {
                        if (endMileage >= _mileageFix.FixData[_mileageFix.FixData.Count - 1].MarkedEndPoint.UserSetMileage / 1000
                            || startMileage <= _mileageFix.FixData[0].MarkedStartPoint.UserSetMileage / 1000)
                        {
                            //return "";
                            throw new Exception("此里程范围内没有修正数据：start：" + startMileage + "  end：" + endMileage);
                        }
                        if (startMileage > _mileageFix.FixData[0].MarkedStartPoint.UserSetMileage / 1000)
                        {
                            startMileage = _mileageFix.FixData[0].MarkedStartPoint.UserSetMileage / 1000;
                        }
                        if (endMileage < _mileageFix.FixData[_mileageFix.FixData.Count - 1].MarkedEndPoint.UserSetMileage / 1000)
                        {
                            endMileage = _mileageFix.FixData[_mileageFix.FixData.Count - 1].MarkedEndPoint.UserSetMileage / 1000;
                        }
                    }



                    Milestone startStone = new Milestone();
                    Milestone endStone = new Milestone();

                    startStone = CalcMilestoneByFixedMilestone((float)startMileage * 1000, _mileageFix.FixData, citFilePath);
                    endStone = CalcMilestoneByFixedMilestone((float)endMileage * 1000, _mileageFix.FixData, citFilePath);
                    //_mileageFix.CalcMilestoneByFixedMilestone(123);
                    //endStone = _mileageFix.CalcMilestoneByFixedMilestone((float)endMileage * 1000);

                    if (startStone.mFilePosition != -1)
                    {
                        List<double[]> dataList = new List<double[]>();

                        double[] datas = citProcess.GetOneChannelDataInRange(citFilePath, channelId, startStone.mFilePosition, endStone.mFilePosition);

                        List<Milestone> mileStoneList = citProcess.GetMileStoneByRange(citFilePath, startStone.mFilePosition, endStone.mFilePosition);

                        List<Milestone> mileStoneListNew = GetMileageReviseData(mileStoneList, _mileageFix.FixData, citFilePath);

                        var dataKm = mileStoneListNew.Select(s => Convert.ToDouble(s.mKm)).ToArray();
                        var dataMeter = mileStoneListNew.Select(s => Convert.ToDouble(s.mMeter)).ToArray();

                        dataList.Add(dataKm);
                        dataList.Add(dataMeter);
                        dataList.Add(datas);

                        ExportData(exportTxtPath, dataList);
                    }
                }
                else
                {

                }
            }

        }


        public void SaveChannelDataTxt(string citFilePath, string idfFilePath, string dbFilePath, string[] channleNames, string exportTxtPath, double startMileage, double endMileage, int sampleCount, bool isChinese)
        {
            FileInformation citHeader = citProcess.GetFileInformation(citFilePath);

            List<ChannelDefinition> list = citProcess.GetChannelDefinitionList(citFilePath);

            //int channelId = 0;
            //var channelItem = list.Where(s => s.sNameEn == channleName || s.sNameCh == channleName).FirstOrDefault();
            //if (channelItem != null)
            //{
            //    channelId = channelItem.sID;
            //}
            List<ChannelDefinition> channelList_Data = new List<ChannelDefinition>();

            List<ChannelDefinition> channelList = new List<ChannelDefinition>();
            channelList.Add(list.Where(s => s.sID == 1).First());
            channelList.Add(list.Where(s => s.sID == 2).First());

            for (int i = 0; i < channleNames.Length; i++)
            {
                var channelItem = list.Where(s => s.sNameEn == channleNames[i] || s.sNameCh == channleNames[i]).FirstOrDefault();
                if (channelItem != null)
                {
                    channelList.Add(channelItem);
                    channelList_Data.Add(channelItem);
                }
            }

            if (citHeader.iKmInc == 1 && startMileage < endMileage)
            {
                double change = startMileage;
                startMileage = endMileage;
                endMileage = change;
            }

            if (!String.IsNullOrEmpty(idfFilePath) && !String.IsNullOrEmpty(dbFilePath))
            {
                indexOperator = new IndexOperator();
                indexOperator.IndexFilePath = idfFilePath;

                InnerFileOperator.InnerFilePath = dbFilePath;
                InnerFileOperator.InnerConnString = "Provider = Microsoft.Jet.OLEDB.4.0; Data Source = {0}; Persist Security Info = True; Mode = Share Exclusive; Jet OLEDB:Database Password = iicdc; ";

                _mileageFix = new MilestoneFix(citFilePath, indexOperator);

                _mileageFix.ReadMilestoneFixTable();

                if (_mileageFix.FixData.Count > 0)
                {
                    if (citHeader.iKmInc == 0)
                    {
                        if (startMileage >= _mileageFix.FixData[_mileageFix.FixData.Count - 1].MarkedEndPoint.UserSetMileage / 1000
                            || endMileage <= _mileageFix.FixData[0].MarkedStartPoint.UserSetMileage / 1000)
                        {
                            //return "";

                            throw new Exception("此里程范围内没有修正数据：start：" + startMileage + "  end：" + endMileage);
                        }
                        if (startMileage < (_mileageFix.FixData[0].MarkedStartPoint.UserSetMileage / 1000))
                        {
                            startMileage = (_mileageFix.FixData[0].MarkedStartPoint.UserSetMileage / 1000);
                        }
                        if (endMileage > _mileageFix.FixData[_mileageFix.FixData.Count - 1].MarkedEndPoint.UserSetMileage / 1000)
                        {
                            endMileage = _mileageFix.FixData[_mileageFix.FixData.Count - 1].MarkedEndPoint.UserSetMileage / 1000;
                        }
                    }
                    else if (citHeader.iKmInc == 1)
                    {
                        if (endMileage >= _mileageFix.FixData[_mileageFix.FixData.Count - 1].MarkedEndPoint.UserSetMileage / 1000
                            || startMileage <= _mileageFix.FixData[0].MarkedStartPoint.UserSetMileage / 1000)
                        {
                            //return "";
                            throw new Exception("此里程范围内没有修正数据：start：" + startMileage + "  end：" + endMileage);
                        }
                        if (startMileage > _mileageFix.FixData[0].MarkedStartPoint.UserSetMileage / 1000)
                        {
                            startMileage = _mileageFix.FixData[0].MarkedStartPoint.UserSetMileage / 1000;
                        }
                        if (endMileage < _mileageFix.FixData[_mileageFix.FixData.Count - 1].MarkedEndPoint.UserSetMileage / 1000)
                        {
                            endMileage = _mileageFix.FixData[_mileageFix.FixData.Count - 1].MarkedEndPoint.UserSetMileage / 1000;
                        }
                    }



                    Milestone startStone = new Milestone();
                    Milestone endStone = new Milestone();

                    startStone = CalcMilestoneByFixedMilestone((float)startMileage * 1000, _mileageFix.FixData, citFilePath);
                    endStone = CalcMilestoneByFixedMilestone((float)endMileage * 1000, _mileageFix.FixData, citFilePath);
                    //_mileageFix.CalcMilestoneByFixedMilestone(123);
                    //endStone = _mileageFix.CalcMilestoneByFixedMilestone((float)endMileage * 1000);

                    long start = startStone.mFilePosition;
                    long end = endStone.mFilePosition;

                    if (startStone.mFilePosition != -1)
                    {
                        if (sampleCount != 0)
                        {
                            int byteneeds = citHeader.iChannelNumber * 2 * sampleCount;

                            int count = Convert.ToInt32((end - start) / byteneeds);
                            for (int i = 0; i < count; i++)
                            {
                                long endPos = start + byteneeds;

                                List<Milestone> mileStoneList = citProcess.GetMileStoneByRange(citFilePath, start, endPos);

                                List<Milestone> mileStoneListNew = GetMileageReviseData(mileStoneList, _mileageFix.FixData, citFilePath);

                                var dataKm = mileStoneListNew.Select(s => Convert.ToDouble(s.mKm)).ToArray();
                                var dataMeter = mileStoneListNew.Select(s => Convert.ToDouble(s.mMeter)).ToArray();

                                List<double[]> dataList = new List<double[]>();

                                dataList.Add(dataKm);
                                dataList.Add(dataMeter);

                                for (int k = 0; k < channelList_Data.Count; k++)
                                {
                                    double[] datas = citProcess.GetOneChannelDataInRange(citFilePath, channelList_Data[k].sID, start, endPos);

                                    dataList.Add(datas);
                                }

                                ExportData(exportTxtPath, dataList,channelList,isChinese);

                                start = endPos + 1;
                            }
                        }
                        else
                        {
                            List<Milestone> mileStoneList = citProcess.GetMileStoneByRange(citFilePath, start, end);

                            List<Milestone> mileStoneListNew = GetMileageReviseData(mileStoneList, _mileageFix.FixData, citFilePath);

                            var dataKm = mileStoneListNew.Select(s => Convert.ToDouble(s.mKm)).ToArray();
                            var dataMeter = mileStoneListNew.Select(s => Convert.ToDouble(s.mMeter)).ToArray();

                            List<double[]> dataList = new List<double[]>();

                            dataList.Add(dataKm);
                            dataList.Add(dataMeter);

                            for (int k = 0; k < channelList_Data.Count; k++)
                            {
                                double[] datas = citProcess.GetOneChannelDataInRange(citFilePath, channelList_Data[k].sID, start, end);

                                dataList.Add(datas);
                            }

                            ExportData(exportTxtPath, dataList, channelList, isChinese);
                        }

                    }
                }
                else
                {

                }
            }

        }


        public Milestone CalcMilestoneByFixedMilestone(float mileStone, List<MileStoneFixData> _fixData, string _citFilePath)
        {
            Milestone mstone = new Milestone();
            if (_fixData != null && _fixData.Count > 0)
            {
                for (int i = 0; i < _fixData.Count; i++)
                {
                    if (mileStone >= _fixData[i].MarkedStartPoint.UserSetMileage &&
                        mileStone <= _fixData[i].MarkedEndPoint.UserSetMileage)
                    {
                        float diff = mileStone - _fixData[i].MarkedStartPoint.UserSetMileage;
                        int sampleCount = (int)(diff / _fixData[i].SampleRate) + 1;
                        //targetPosion = _citProcess.GetAppointEndPostion(_citFilePath, _fixData[i].MarkedStartPoint.FilePointer, sampleCount);
                        mstone = citProcess.GetAppointMilestone(_citFilePath, _fixData[i].MarkedStartPoint.FilePointer, sampleCount);
                        break;
                    }
                }
            }
            return mstone;
        }


        public List<Milestone> GetMileageReviseData(List<Milestone> sourceMilestongList, List<MileStoneFixData> _fixData, string _citFilePath)
        {
            List<Milestone> reviseMilestongList = new List<Milestone>(sourceMilestongList);

            int indexRevise = 0;
            if (_fixData != null && _fixData.Count > 0)
            {
                for (int i = 0; i < _fixData.Count; i++)
                {
                    int mileStoneStartIndex = -1;
                    int mileStoneEndIndex = -1;
                    float sampleDistance = 0;
                    long sampleCount = 0;
                    if (reviseMilestongList[indexRevise].mFilePosition >= _fixData[i].MarkedStartPoint.FilePointer)
                    {
                        mileStoneStartIndex = reviseMilestongList.FindIndex(p => p.mFilePosition == reviseMilestongList[indexRevise].mFilePosition);
                        sampleDistance = _fixData[i].SampleRate;
                        sampleCount = citProcess.GetSampleCountByRange(_citFilePath, _fixData[i].MarkedStartPoint.FilePointer, reviseMilestongList[indexRevise].mFilePosition);
                        if (reviseMilestongList[reviseMilestongList.Count - 1].mFilePosition <= _fixData[i].MarkedEndPoint.FilePointer)
                        {
                            mileStoneEndIndex = reviseMilestongList.FindIndex(m => m.mFilePosition == reviseMilestongList[reviseMilestongList.Count - 1].mFilePosition);
                        }
                        else
                        {
                            mileStoneEndIndex = reviseMilestongList.FindIndex(m => m.mFilePosition == _fixData[i].MarkedEndPoint.FilePointer);
                            if (mileStoneEndIndex == -1)
                            {
                                continue;
                            }
                            else
                            {
                                indexRevise = mileStoneEndIndex;
                            }
                        }
                        int index = 0;
                        bool isChain = false;
                        long currentMileage = 0;

                        double startMileage = _fixData[i].MarkedStartPoint.UserSetMileage + sampleDistance * (sampleCount);

                        for (int j = mileStoneStartIndex; j <= mileStoneEndIndex; j++)
                        {
                            double kMiles = (startMileage + index * sampleDistance) / 1000;
                            int chainIndex = _fixData[i].Chains.FindIndex(m => m.Km == (long)kMiles);
                            if (isChain || chainIndex != -1)
                            {
                                if (isChain == false && chainIndex != -1)
                                {
                                    currentMileage = (long)kMiles;
                                    isChain = true;
                                }
                                reviseMilestongList[j].mKm = currentMileage;
                                reviseMilestongList[j].mMeter = (float)(kMiles - reviseMilestongList[j].mKm) * 1000;
                                if (_fixData[i].Chains[chainIndex].IsLongChain())
                                {
                                    if (reviseMilestongList[j].mMeter >= (1000 + _fixData[i].Chains[chainIndex].ExtraLength))
                                    {
                                        reviseMilestongList[j].mKm = currentMileage + 1;
                                        reviseMilestongList[j].mMeter = reviseMilestongList[j].mMeter - (1000 + _fixData[i].Chains[chainIndex].ExtraLength);
                                        startMileage = reviseMilestongList[j].mKm;
                                        isChain = false;
                                    }
                                }
                                else
                                {
                                    if (reviseMilestongList[j].mMeter >= (1000 + _fixData[i].Chains[chainIndex].ExtraLength))
                                    {
                                        reviseMilestongList[j].mKm = currentMileage + 1;
                                        reviseMilestongList[j].mMeter = reviseMilestongList[j].mMeter - (1000 + _fixData[i].Chains[chainIndex].ExtraLength);
                                        startMileage = reviseMilestongList[j].mKm;
                                        isChain = false;
                                    }
                                }
                            }
                            else
                            {
                                reviseMilestongList[j].mKm = (long)kMiles;
                                reviseMilestongList[j].mMeter = (float)Math.Round((kMiles - reviseMilestongList[j].mKm) * 1000, 2);
                            }
                            index++;
                        }
                        if (mileStoneEndIndex == reviseMilestongList.Count - 1)
                        {
                            break;
                        }
                    }
                }

            }
            return reviseMilestongList;
        }

    }
}
