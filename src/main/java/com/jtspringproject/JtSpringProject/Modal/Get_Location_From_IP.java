package com.jtspringproject.JtSpringProject.Modal;

import com.jtspringproject.JtSpringProject.Modal.Get_Location_From_IP;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
 

public class Get_Location_From_IP {

	public Location_Use_Bean get_ip_Details(String ip) {
		ip=ip.trim();
		Location_Use_Bean obj_Location_Use_Bean=new Location_Use_Bean();
		System.out.println("The ip adress is before "+ip+" split");
		try {
			if(ip.contains(",")){
				String[] temp_ip =ip.split(",");
				ip=temp_ip[1].trim();
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		System.out.println("The ip adress is after "+ip+" split");
		URL url;
		try {

			url = new URL("http://ipwho.is/"+ ip );

			BufferedReader br = new BufferedReader(new InputStreamReader(url.openStream()));
			String strTemp = "";
			String temporaray="";
			String[] temp_array =null;

			System.out.println(br.readLine());

			while (null != (strTemp = br.readLine())) {
				temporaray=strTemp;

			}

			temp_array=temporaray.split(",");
			System.out.println("Str length is "+temp_array.length );
			int length=temp_array.length;


			/*while(i<length){
				System.out.println(i);
				System.out.println(temp_array[i]);
				i++;
			}*/

			if(length==11){

				obj_Location_Use_Bean.setIp_address(ip);

				if(temp_array[3]!=null){
					obj_Location_Use_Bean.setCountry_code(temp_array[3]);
				}
				if(temp_array[4]!=null){
					obj_Location_Use_Bean.setCountry(temp_array[4]);
				}

				if(temp_array[5]!=null){
					obj_Location_Use_Bean.setState(temp_array[5]);
				}


				if(temp_array[6]!=null){
					obj_Location_Use_Bean.setCity(temp_array[6]);
				}

				if(temp_array[7]!=null){
					obj_Location_Use_Bean.setZip(temp_array[7]);
				}

				if(temp_array[8]!=null){
					obj_Location_Use_Bean.setLat(temp_array[8]);
				}

				if(temp_array[9]!=null){
					obj_Location_Use_Bean.setLon(temp_array[9]);
				}



				if(temp_array[10]!=null){
					obj_Location_Use_Bean.setUtc_offset(temp_array[10]);
				}

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return obj_Location_Use_Bean;
	}

	public static void main(String[] args) {

		Get_Location_From_IP obj_Get_Location_From_IP=new Get_Location_From_IP();
		obj_Get_Location_From_IP.get_ip_Details("197.156.77.9");

	}

}


/*

{
"ip":"197.156.77.9",
"success":true,"type":"IPv4",
"continent":"Africa",
"continent_code":"AF",
"country":"Ethiopia",
"country_code":"ET",
"region":"Addis Ababa",
"region_code":"AA",
"city":"Addis Ababa",
"latitude":8.9806034,"longitude":38.7577605,"is_eu":false,"postal":"11701",
"calling_code":"251",
"capital":"Addis Ababa",
"borders":"DJ,ER,KE,SD,SO,SS",
"flag":{"img":"https:\/\/cdn.ipwhois.io\/flags\/et.svg",
"emoji":"\ud83c\uddea\ud83c\uddf9",
"emoji_unicode":"U+1F1EA U+1F1F9"},"connection":{"asn":24757,"org":"Ethio Telecom",
"isp":"Ethio Telecom",
"domain":"ethiotelecom.et"},"timezone":{"id":"Africa\/Addis_Ababa",
"abbr":"EAT",
"is_dst":false,"offset":10800,"utc":"+03:00",
"current_time":"2023-02-01T11:28:57+03:00"}}

* */