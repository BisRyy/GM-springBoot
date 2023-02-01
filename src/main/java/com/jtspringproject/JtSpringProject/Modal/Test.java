package com.jtspringproject.JtSpringProject.Modal;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;

public class Test {

    public static void main(String[] args) {
        String ip = "11,11.11.11.11";
        ip = ip.trim();
        Location_Use_Bean obj_Location_Use_Bean = new Location_Use_Bean();
        System.out.println("The ip adress is before " + ip + " split");
        try {
            if (ip.contains(",")) {
                String[] temp_ip = ip.split(",");
                ip = temp_ip[1].trim();
            }

        } catch (
                Exception e) {
            // TODO: handle exception
        }
        System.out.println("The ip adress is after " + ip + " split");
        URL url;
        try {

            url = new URL("http://ipwho.is/" + ip);

            BufferedReader br = new BufferedReader(new InputStreamReader(url.openStream()));
            String strTemp = "";
            String temporaray = "";
            String[] temp_array = null;

            System.out.println(br.readLine());
            String json = br.readLine();
            System.out.println(json.split(","));

            while (null != (strTemp = br.readLine())) {
                temporaray = strTemp;

            }

            temp_array = temporaray.split(",");

            for (int i = 0; i < args.length; i++) {

            System.out.println("Str length is " + temp_array[0]);
            }
            int length = temp_array.length;
        }catch (Exception e) {

        }


    }
}
