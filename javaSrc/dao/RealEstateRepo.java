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
		
		RealEstate re2 = new RealEstate("Granium", "5억","24평","대구 달서구");
		re2.setHouseDong("101동");
		re2.setHouseStair("3층");
		re2.setDirection("서향");
		re2.setPossibleDate("즉시입주가능");
		re2.setRegiNum("34121162");
		re2.setSellernum("010-2222-2222");
		re2.setHouseimage("apt2.jpg");
		
		RealEstate re3 = new RealEstate("trivian", "7억","32평","창원 팔용동");
		re3.setHouseDong("203동");
		re3.setHouseStair("16층");
		re3.setDirection("북향");
		re3.setPossibleDate("즉시입주가능");
		re3.setRegiNum("21516112");
		re3.setSellernum("010-3333-3333");
		re3.setHouseimage("apt3.jpg");
		

		
		listOfProducts.add(re1);
		listOfProducts.add(re2);
		listOfProducts.add(re3);
		
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
