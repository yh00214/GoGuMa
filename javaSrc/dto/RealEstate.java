package dto;

import java.io.Serializable;

public class RealEstate implements Serializable {
	
	private static final long serialVersionID = -4274700572038677000L;
	
    private String aptname;
	private String price;
	private String size;
	private String address;
	private String houseDong;
	private String houseStair;
	private String direction;
	private String possibleDate;
	private String regiNum;
	private String sellernum;
	private String houseimage;
	
	public RealEstate() {
		super();
	}
	
	public RealEstate(String aptname, String price, String size,String address) {
		this.setAptname(aptname);
		this.setPrice(price);
		this.setSize(size);
		this.setAddress(address);
	}

	public String getAptname() {
		return aptname;
	}

	public void setAptname(String aptname) {
		this.aptname = aptname;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getHouseDong() {
		return houseDong;
	}

	public void setHouseDong(String houseDong) {
		this.houseDong = houseDong;
	}

	public String getHouseStair() {
		return houseStair;
	}

	public void setHouseStair(String houseStair) {
		this.houseStair = houseStair;
	}

	public String getDirection() {
		return direction;
	}

	public void setDirection(String direction) {
		this.direction = direction;
	}

	public String getRegiNum() {
		return regiNum;
	}

	public void setRegiNum(String regiNum) {
		this.regiNum = regiNum;
	}

	public String getPossibleDate() {
		return possibleDate;
	}

	public void setPossibleDate(String possibleDate) {
		this.possibleDate = possibleDate;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getSellernum() {
		return sellernum;
	}

	public void setSellernum(String sellernum) {
		this.sellernum = sellernum;
	}

	public String getHouseimage() {
		return houseimage;
	}

	public void setHouseimage(String houseimage) {
		this.houseimage = houseimage;
	}


}
