package com.techelevator.alpha.model;

import java.math.BigDecimal;

public class Plants {

		private String scientificName;
		private String commonName;
		private BigDecimal pricePerPlant;
		private int areaPerPlant;
		private String desiredLight;
		private String imageLink;
		private String plantingDirections;
		private int region;
		public String getScientificName() {
			return scientificName;
		}
		public void setScientificName(String scientificName) {
			this.scientificName = scientificName;
		}
		public String getCommonName() {
			return commonName;
		}
		public void setCommonName(String commonName) {
			this.commonName = commonName;
		}
		public BigDecimal getPricePerPlant() {
			return pricePerPlant;
		}
		public void setPricePerPlant(BigDecimal pricePerPlant) {
			this.pricePerPlant = pricePerPlant;
		}
		public int getAreaPerPlant() {
			return areaPerPlant;
		}
		public void setAreaPerPlant(int areaPerPlant) {
			this.areaPerPlant = areaPerPlant;
		}
		public String getDesiredLight() {
			return desiredLight;
		}
		public void setDesiredLight(String desiredLight) {
			this.desiredLight = desiredLight;
		}
		public String getImageLink() {
			return imageLink;
		}
		public void setImageLink(String imageLink) {
			this.imageLink = imageLink;
		}
		public String getPlantingDirections() {
			return plantingDirections;
		}
		public void setPlantingDirections(String plantingDirections) {
			this.plantingDirections = plantingDirections;
		}
		public int getRegion() {
			return region;
		}
		public void setRegion(int region) {
			this.region = region;
		}
		
}
