using CitFileSDK;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace CitProcess
{
    public partial class Process
    {
        CitFileProcess.CitFileHelper citHelper = new CitFileProcess.CitFileHelper();

        CitFileSDK.CITFileProcess citFileProcess = new CitFileSDK.CITFileProcess();

        public void SaveChannelDataTxt(string citFilePath, string channleName, string exportTxtPath, double startMileage, double endMileage, int sampleCount,bool isChinese)
        {

            FileInformation citHeader = citProcess.GetFileInformation(citFilePath);

            List<ChannelDefinition> list = citProcess.GetChannelDefinitionList(citFilePath);

            int channelId = 0;

            var channelItem = list.Where(s => s.sNameEn == channleName || s.sNameCh == channleName).FirstOrDefault();
            if (channelItem != null)
            {
                channelId = channelItem.sID;
            }


            if (startMileage != 0 && endMileage != 0)
            {
                long start = citProcess.GetCurrentPositionByMilestone(citFilePath, Convert.ToSingle(startMileage * 1000), false);

                long end = citProcess.GetCurrentPositionByMilestone(citFilePath, Convert.ToSingle(endMileage * 1000), false);

                

                if (sampleCount != 0)
                {
                    int byteneeds = citHeader.iChannelNumber * 2 * sampleCount;

                    int count = Convert.ToInt32((end - start) / byteneeds);
                    for (int i = 0; i < count; i++)
                    {
                        long endPos = start + byteneeds;


                        var mileStoneList = citProcess.GetMileStoneByRange(citFilePath, start, endPos);

                        var dataKm = mileStoneList.Select(s => Convert.ToDouble(s.mKm)).ToArray();
                        var dataMeter = mileStoneList.Select(s => Convert.ToDouble(s.mMeter)).ToArray();

                        var datas = citProcess.GetOneChannelDataInRange(citFilePath, channelId, start, endPos);

                        List<double[]> listDatas = new List<double[]>();
                        listDatas.Add(dataKm);
                        listDatas.Add(dataKm);
                        listDatas.Add(datas);

                        ExportData(exportTxtPath, listDatas);


                        start = endPos + 1;
                    }
                }
                else
                {
                    var mileStoneList = citProcess.GetMileStoneByRange(citFilePath, start, end);

                    var dataKm = mileStoneList.Select(s => Convert.ToDouble(s.mKm)).ToArray();
                    var dataMeter = mileStoneList.Select(s => Convert.ToDouble(s.mMeter)).ToArray();

                    var datas = citProcess.GetOneChannelDataInRange(citFilePath, channelId, start, end);

                    List<double[]> listDatas = new List<double[]>();
                    listDatas.Add(dataKm);
                    listDatas.Add(dataKm);
                    listDatas.Add(datas);

                    ExportData(exportTxtPath, listDatas);
                }


                
            }
            else
            {
                long[] positons = citProcess.GetPositons(citFilePath);

                long start = 0; long end = 0;
                if (positons != null && positons.Length > 1)
                {
                    start = positons[0];
                    end = positons[1];
                }

                var mileStoneList = citProcess.GetMileStoneByRange(citFilePath, start, end);

                var dataKm = mileStoneList.Select(s => Convert.ToDouble(s.mKm)).ToArray();
                var dataMeter = mileStoneList.Select(s => Convert.ToDouble(s.mMeter)).ToArray();

                var datas = citProcess.GetOneChannelDataInRange(citFilePath, channelId, start, end);

                List<double[]> listDatas = new List<double[]>();
                listDatas.Add(dataKm);
                listDatas.Add(dataMeter);
                listDatas.Add(datas);

                ExportData(exportTxtPath, listDatas);

                //var datas = citHelper.GetSingleChannelData(citFilePath, channelId);

                //ExportData(exportTxtPath, datas);
            }

        }


        public void SaveChannelDataTxt(string citFilePath, string[] channleNames, string exportTxtPath, double startMileage, double endMileage, int sampleCount, bool isChinese)
        {

            FileInformation citHeader = citProcess.GetFileInformation(citFilePath);

            List<ChannelDefinition> list = citProcess.GetChannelDefinitionList(citFilePath);

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

            if (startMileage != 0 && endMileage != 0)
            {
                long start = citProcess.GetCurrentPositionByMilestone(citFilePath, Convert.ToSingle(startMileage * 1000), false);

                long end = citProcess.GetCurrentPositionByMilestone(citFilePath, Convert.ToSingle(endMileage * 1000), false);

                if (sampleCount != 0)
                {
                    int byteneeds = citHeader.iChannelNumber * 2 * sampleCount;

                    int count = Convert.ToInt32((end - start) / byteneeds);
                    for (int i = 0; i < count; i++)
                    {
                        long endPos = start + byteneeds;


                        var mileStoneList = citProcess.GetMileStoneByRange(citFilePath, start, endPos);

                        var dataKm = mileStoneList.Select(s => Convert.ToDouble(s.mKm)).ToArray();
                        var dataMeter = mileStoneList.Select(s => Convert.ToDouble(s.mMeter)).ToArray();

                        

                        List<double[]> listDatas = new List<double[]>();
                        listDatas.Add(dataKm);
                        listDatas.Add(dataMeter);

                        for (int k = 0; k < channelList_Data.Count; k++)
                        {
                            var datas = citProcess.GetOneChannelDataInRange(citFilePath, channelList_Data[k].sID, start, endPos);

                            listDatas.Add(datas);
                        }
                        

                        ExportData(exportTxtPath, listDatas,channelList,isChinese);


                        start = endPos + 1;
                    }
                }
                else
                {
                    var mileStoneList = citProcess.GetMileStoneByRange(citFilePath, start, end);

                    var dataKm = mileStoneList.Select(s => Convert.ToDouble(s.mKm)).ToArray();
                    var dataMeter = mileStoneList.Select(s => Convert.ToDouble(s.mMeter)).ToArray();

                    List<double[]> listDatas = new List<double[]>();
                    listDatas.Add(dataKm);
                    listDatas.Add(dataMeter);

                    for (int k = 0; k < channelList_Data.Count; k++)
                    {
                        var datas = citProcess.GetOneChannelDataInRange(citFilePath, channelList_Data[k].sID, start, end);

                        listDatas.Add(datas);
                    }

                    ExportData(exportTxtPath, listDatas, channelList,isChinese);
                }



            }
            else
            {
                //long[] positons = citProcess.GetPositons(citFilePath);

                //long start = 0; long end = 0;
                //if (positons != null && positons.Length > 1)
                //{
                //    start = positons[0];
                //    end = positons[1];
                //}

                //var mileStoneList = citProcess.GetMileStoneByRange(citFilePath, start, end);

                //var dataKm = mileStoneList.Select(s => Convert.ToDouble(s.mKm)).ToArray();
                //var dataMeter = mileStoneList.Select(s => Convert.ToDouble(s.mMeter)).ToArray();

                //var datas = citProcess.GetOneChannelDataInRange(citFilePath, channelId, start, end);

                //List<double[]> listDatas = new List<double[]>();
                //listDatas.Add(dataKm);
                //listDatas.Add(dataMeter);
                //listDatas.Add(datas);

                //ExportData(exportTxtPath, listDatas);

            }

        }


        //public void SaveChannelDataTxt(string citFilePath, string channleName,string exportTxtPath, double startMileage, double endMileage)
        //{
        //    int channelId = citHelper.GetChannelId(channleName, citFilePath);

        //    if (startMileage != 0 && endMileage != 0)
        //    {
        //        var datas = citHelper.GetSingleChannelData(citFilePath, channleName, startMileage, endMileage);


        //        ExportData(exportTxtPath, datas);
        //    }
        //    else
        //    {
        //        var datas = citHelper.GetSingleChannelData(citFilePath, channelId);

        //        ExportData(exportTxtPath, datas);
        //    }
        //}


        public void SaveChannelDataTxt(string citFilePath, int channelId, string exportTxtPath)
        {
            var datas = citHelper.GetSingleChannelData(citFilePath, channelId);

            ExportData(exportTxtPath, datas);
        }


        public void ExportData(string exportTxtPath, double[] datas)
        {
            using (StreamWriter sw = new StreamWriter(exportTxtPath))
            {
                for (int i = 0; i < datas.Length; i++)
                {
                    if (i != datas.Length - 1)
                    {
                        sw.WriteLine(datas[i].ToString() + ",");
                    }
                    else
                    {
                        sw.WriteLine(datas[i].ToString());
                    }
                }
            }
        }

        public void ExportData(string exportTxtPath, List<double[]> dataList)
        {
            using (StreamWriter sw = new StreamWriter(exportTxtPath, true))
            {
                int count = 0;
                if (dataList.Count > 0)
                    count = dataList[0].Length;

                for (int j = 0; j < count; j++)
                {
                    for (int i = 0; i < dataList.Count; i++)
                    {
                        sw.Write(dataList[i][j]);
                        if (i != dataList.Count - 1)
                        {
                            sw.Write(",");
                        }
                    }
                    sw.WriteLine();
                }
            }
        }



        public void ExportData(string exportTxtPath, List<double[]> dataList,List<ChannelDefinition> channelList,bool isChinese)
        {
            using (StreamWriter sw = new StreamWriter(exportTxtPath, true))
            {
                for (int i = 0; i < channelList.Count; i++)
                {
                    if (isChinese)
                        sw.Write(channelList[i].sNameCh + "(" + channelList[i].sUnit + ")");
                    else
                        sw.Write(channelList[i].sNameEn + "(" + channelList[i].sUnit + ")");
                    if (i != channelList.Count - 1)
                    {
                        sw.Write(",");
                    }
                }

                sw.WriteLine();


                int count = 0;
                if (dataList.Count > 0)
                    count = dataList[0].Length;

                for (int j = 0; j < count; j++)
                {
                    for (int i = 0; i < dataList.Count; i++)
                    {
                        sw.Write(dataList[i][j]);
                        if (i != dataList.Count - 1)
                        {
                            sw.Write(",");
                        }
                    }
                    sw.WriteLine();
                }
            }
        }

    }
}
