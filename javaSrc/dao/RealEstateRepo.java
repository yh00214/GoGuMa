package dao;

import java.util.ArrayList;

import dto.RealEstate;

public class RealEstateRepo {
	private ArrayList<RealEstate> listOfProducts = new ArrayList<RealEstate>();
	private static RealEstateRepo instance = new RealEstateRepo();
	
	public static RealEstateRepo getInstance() {
		return instance;
	}
	
	public RealEstateRepo() {
		RealEstate re1 = new RealEstate("Granvil", "13억","43평","서초구 반포동");
		re1.setHouseDong("203동");
		re1.setHouseStair("15층");
		re1.setDirection("남동향");
		re1.setPossibleDate("즉시입주가능");
		re1.setRegiNum("10221351");
		re1.setSellernum("010-1111-1111");
		re1.setHouseimage("apt1.jpg");
		re1.setPositionX(37.500936);
		re1.setPositionY(126.991647);
		
		RealEstate re2 = new RealEstate("Granium", "5억","24평","대구 달서구");
		re2.setHouseDong("101동");
		re2.setHouseStair("13층");
		re2.setDirection("서향");
		re2.setPossibleDate("즉시입주가능");
		re2.setRegiNum("34121162");
		re2.setSellernum("010-2222-2222");
		re2.setHouseimage("apt2.jpg");
		re2.setPositionX(35.826628);
		re2.setPositionY(128.527583);
		
		RealEstate re3 = new RealEstate("trivian", "7억","32평","창원 팔용동");
		re3.setHouseDong("203동");
		re3.setHouseStair("16층");
		re3.setDirection("북향");
		re3.setPossibleDate("즉시입주가능");
		re3.setRegiNum("21516112");
		re3.setSellernum("010-3333-3333");
		re3.setHouseimage("apt3.jpg");
		re3.setPositionX(35.253167);
		re3.setPositionY(128.608876);
		
		
		
		
		RealEstate re4 = new RealEstate("Premium", "2억","24평","부산 서면");
		re4.setHouseDong("303동");
		re4.setHouseStair("21층");
		re4.setDirection("남동향");
		re4.setPossibleDate("즉시입주가능");
		re4.setRegiNum("12312311");
		re4.setSellernum("010-5555-5555");
		re4.setHouseimage("apt4.jpg");
		re4.setPositionX(35.165124);
		re4.setPositionY(129.067275);
		
		RealEstate re5 = new RealEstate("Supreme", "23억","42평","대구 북구");
		re5.setHouseDong("105동");
		re5.setHouseStair("13층");
		re5.setDirection("남향");
		re5.setPossibleDate("즉시입주가능");
		re5.setRegiNum("89415421");
		re5.setSellernum("010-5555-5555");
		re5.setHouseimage("apt5.jpg");
		re5.setPositionX(35.934964);
		re5.setPositionY(128.563425);
		
		RealEstate re6 = new RealEstate("Cali", "3억","32평","광주 방림동");
		re6.setHouseDong("506동");
		re6.setHouseStair("23층");
		re6.setDirection("북향");
		re6.setPossibleDate("즉시입주가능");
		re6.setRegiNum("7651515");
		re6.setSellernum("010-6666-6666");
		re6.setHouseimage("apt6.jpg");
		re6.setPositionX(35.128882);
		re6.setPositionY(126.916621);
	

		
		listOfProducts.add(re1);
		listOfProducts.add(re2);
		listOfProducts.add(re3);
		listOfProducts.add(re4);
		listOfProducts.add(re5);
		listOfProducts.add(re6);
	}
	public ArrayList<RealEstate> getAllProducts(){
		return listOfProducts;
	}
	public RealEstate getProductById(String reginum) {
		RealEstate productById = null;
		
		for(int i =0; i<listOfProducts.size();i++)
		{
			RealEstate product = listOfProducts.get(i);
			if(product != null & product.getRegiNum() !=null && product.getRegiNum().equals(reginum))
			{
				productById = product;
				break;
			}
		}
		return productById;
	}
	public void addProduct(RealEstate product) {
		listOfProducts.add(product);
	}
	

}
