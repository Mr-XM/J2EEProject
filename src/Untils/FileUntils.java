package Untils;

import java.io.*;
public class FileUntils {

    //public static final String filePath="/Users/zhangyinghao/Desktop/";
    public static final String filePath="C:/";

    /**
     * 向文件写入内容
     *
     * @param file
     * @param writeData
     */
    public static void writeInToFile(File file, String writeData) {
        try {
            FileWriter fw = new FileWriter(file.getAbsoluteFile());
            BufferedWriter bw = new BufferedWriter(fw);
            bw.write(writeData);
            bw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    /**
     * 创建表格
     *
     * @param dataTableName
     * @return
     */
    public static boolean createTable(String dataTableName) {
        File file = new File(filePath + dataTableName + ".txt");
        if (!file.exists() ) {
            try {
                file.createNewFile();
                return true;
            } catch (IOException e) {
                e.printStackTrace();
                return false;
            }
        }
        return false;
    }

    /**
     * 获得数据字典的表单
     *
     * @param tableName
     * @return
     */
    public static String getDataFromFile(String tableName) {
        String data="";
        try {
            File file = new File(filePath + tableName + ".txt");
            if (file.exists()) {
                String line="";
                FileReader fr = new FileReader(file.getAbsoluteFile());
                BufferedReader reader = new BufferedReader(fr);
                while ((line = reader.readLine()) != null) {
                    if(line!=null){
                        data=line;
                    }
                }
                return data;
            }else{
                createTable("count");
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
        return data;
    }

    public static void main(String[] arg){
        System.out.println(getDataFromFile("count"));
    }
}
