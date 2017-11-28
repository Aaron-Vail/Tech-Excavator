-- *****************************************************************************
-- This script contains INSERT statements for populating tables with seed data
-- *****************************************************************************

BEGIN;

--Region information
INSERT INTO region (region_id, climate) VALUES ('1', 'Cold');
INSERT INTO region (region_id, climate) VALUES ('2', 'Cool');
INSERT INTO region (region_id, climate) VALUES ('3', 'Moderate');
INSERT INTO region (region_id, climate) VALUES ('4', 'Warm');
INSERT INTO region (region_id, climate) VALUES ('5', 'Hot');

--Plant information


INSERT INTO plant (scientific_name, common_name, price_per_plant, area_per_plant, desired_light, 
					image_link, planting_directions, region) VALUES 
					('Lycopersicon lycopersicum', 
					'Tomato', '0.03', '3', 'sun', 'https://static.pexels.com/photos/257794/pexels-photo-257794.jpeg', 
					'Rows: space plants placing one seed every 2" to 8" in rows 4 ft to 5 ft apart.  Hills: plant 5 to 8 
					seeds per hill. When plants emerge, cut off weaker plants leaving only 2 to 3 per hill. Allow 3'' to 
					6 ft between hills.  Beds: place hills in beds following spacing for hills above.  Containers: Place 
					seeds as described above for rows or hills. Use bush-type cucumbers which require less room or grow plants 
					on cages or on trellises.', '3'
					);
					
INSERT INTO plant (scientific_name, common_name, price_per_plant, area_per_plant, desired_light, 
					image_link, planting_directions, region) VALUES 
					('Daucus carota', 'Carrot', 
					'0.02', '1', 'sun', 'https://static.pexels.com/photos/65174/pexels-photo-65174.jpeg', 
					'Rows: space plants placing one seed every 2" to 8" in rows 4 ft to 5ft in apart.  
					Hills: plant 5 to 8 seeds per hill. When plants emerge, cut off weaker plants leaving only 
					2 to 3 per hill. Allow 3 ft to 6 ft between hills.  Beds: place hills in beds following spacing 
					for hills above.  Containers: Place seeds as described above for rows or hills. Use bush-type 
					cucumbers which require less room or grow plants on cages or on trellises.', '3'
					);
					
INSERT INTO plant (scientific_name, common_name, price_per_plant, area_per_plant, desired_light, 
					image_link, planting_directions, region) VALUES 
					('vulgaris', 'Beet', '0.04', 
					'1', 'sun', 'http://res.cloudinary.com/ddiztoimj/image/upload/v1511887811/beet_dyxvkt.jpg', 
					'Rows: space plants placing one seed every 2" to 8" in rows 4 ft to 5 ft apart.  Hills: plant 
					5 to 8 seeds per hill. When plants emerge, cut off weaker plants leaving only 2 to 3 per hill. 
					Allow 3 ft to 6 ft between hills.  Beds: place hills in beds following spacing for hills above.  
					Containers: Place seeds as described above for rows or hills. Use bush-type cucumbers which require 
					less room or grow plants on cages or on trellises.', '2'
					);
					
INSERT INTO plant (scientific_name, common_name, price_per_plant, area_per_plant, desired_light, 
					image_link, planting_directions, region) VALUES 
					('napus', 'Turnip', '0.02', 
					'1', 'sun', 'http://res.cloudinary.com/ddiztoimj/image/upload/v1511887816/turnip_sefr1y.jpg', 
					'Rows: space plants placing one seed every 2" to 8" in rows 4 ft to 5 ft apart.  Hills: plant 
					5 to 8 seeds per hill. When plants emerge, cut off weaker plants leaving only 2 to 3 per hill. 
					Allow 3 ft to 6 ft between hills.  Beds: place hills in beds following spacing for hills above.  
					Containers: Place seeds as described above for rows or hills. Use bush-type cucumbers which 
					require less room or grow plants on cages or on trellises.', '2'
					);
					
INSERT INTO plant (scientific_name, common_name, price_per_plant, area_per_plant, desired_light, 
					image_link, planting_directions, region) VALUES 
					('Citrullus lanatus', 'Watermelon', '0.07', 
					'1', 'sun', 'http://res.cloudinary.com/ddiztoimj/image/upload/v1511887815/watermelon_pk2lmw.png', 
					'Rows: space plants placing one seed every 2" to 8" in rows 4 ft to 5 ft apart.  Hills: plant 
					5 to 8 seeds per hill. When plants emerge, cut off weaker plants leaving only 2 to 3 per hill. 
					Allow 3 ft to 6 ft between hills.  Beds: place hills in beds following spacing for hills above.  
					Containers: Place seeds as described above for rows or hills. Use bush-type cucumbers which require 
					less room or grow plants on cages or on trellises.', '3'
					);
					
INSERT INTO plant (scientific_name, common_name, price_per_plant, area_per_plant, desired_light, 
					image_link, planting_directions, region) VALUES 
					('Sativus', 'Cucumber', '0.02', '1', 'sun', 
					'http://res.cloudinary.com/ddiztoimj/image/upload/v1511887810/cucumber_pmccjd.jpg', 'Rows: space plants 
					placing one seed every 2" to 8" in rows 4 ft to 5 ft apart.  Hills: plant 5 to 8 seeds per hill. 
					When plants emerge, cut off weaker plants leaving only 2 to 3 per hill. Allow 3 ft to 6 ft between hills.  
					Beds: place hills in beds following spacing for hills above.  Containers: Place seeds as described 
					above for rows or hills. Use bush-type cucumbers which require less room or grow plants on cages or on trellises.',
					'3'
					);
					
INSERT INTO plant (scientific_name, common_name, price_per_plant, area_per_plant, desired_light, 
					image_link, planting_directions, region) VALUES 
					('Vesca', 'Strawberry', '0.04', '1', 'shade', 
					'http://res.cloudinary.com/ddiztoimj/image/upload/v1511887813/strawberry_bjbeej.jpg', 
					'Rows: space plants placing one seed every 2" to 8" in rows 4 ft to 5 ft apart.  
					Hills: plant 5 to 8 seeds per hill. When plants emerge, cut off weaker plants 
					leaving only 2 to 3 per hill. Allow 3 ft to 6 ft between hills.  Beds: place hills 
					in beds following spacing for hills above.  Containers: Place seeds as described 
					above for rows or hills. Use bush-type cucumbers which require less room or grow 
					plants on cages or on trellises.', '3'
					); 
					
INSERT INTO plant (scientific_name, common_name, price_per_plant, area_per_plant, desired_light, 
					image_link, planting_directions, region) VALUES 
					('Pepo', 'Pumpkin', '0.03', '6', 'shade', 
					'http://res.cloudinary.com/ddiztoimj/image/upload/v1511887811/pumpkin_t2mjh0.jpg', 
					'Rows: space plants placing one seed every 2" to 8" in rows 4 ft to 5 ft apart.  Hills: 
					plant 5 to 8 seeds per hill. When plants emerge, cut off weaker plants leaving only 2 
					to 3 per hill. Allow 3 ft to 6 ft between hills.  Beds: place hills in beds following 
					spacing for hills above.  Containers: Place seeds as described above for rows or hills. 
					Use bush-type cucumbers which require less room or grow plants on cages or on trellises.', '2'
					);
					

INSERT INTO plant (scientific_name, common_name, price_per_plant, area_per_plant, desired_light, 
					image_link, planting_directions, region) VALUES 
					('Brassica eruca', 'Arugula', '0.07', '1', 'sun', 
					'https://cdn.pixabay.com/photo/2016/05/05/15/11/rocket-1374096_960_720.jpg', 
					'Grown as an edible herb in the Mediterranean area since Roman times, it was mentioned 
					by various classical authors as an aphrodisiac, most famously in a poem long ascribed to Virgil, Moretum, 
 					which contains the line: “et Venerem revocans eruca morantem” (“and the rocket, which 
 					revives drowsy Venus [sexual desire]”).  Some writers assert that for this reason during the 
 					Middle Ages it was forbidden to grow rocket in monasteries.', '3'
 					);

INSERT INTO plant (scientific_name, common_name, price_per_plant, area_per_plant, desired_light, 
					image_link, planting_directions, region) VALUES 
					('Oleracea', 'Kale', '0.08', '2', 'sun', 
					'http://res.cloudinary.com/ddiztoimj/image/upload/v1511887812/khale_td5qxr.jpg', 
					'Until the end of the Middle Ages, kale was one of the most common green vegetables in Europe. 
					Curly-leaved varieties of cabbage already existed along with flat-leaved varieties in Greece 
					in the fourth century BC. It was also used as medicinal food source.  Disocorides wrote that 
					it could be used to treat bowel ailments.[3] These forms,  which were referred to by the Romans as Sabellian 
					kale, are considered to be the ancestors of modern kales.', '3'
					);


INSERT INTO plant (scientific_name, common_name, price_per_plant, area_per_plant, desired_light, 
					image_link, planting_directions, region) VALUES 
					('Oleracea var.botrytis', 'Cauliflower', '0.02', '3', 'sun', 
					'http://res.cloudinary.com/ddiztoimj/image/upload/v1511889101/tandooricauliflower-1223_o4bzmz.jpg', 
					'In the 1st century AD, Pliny''s included what he called cyma among his descriptions of cultivated 
					plants in Natural History: "Ex omnibus brassicae generibus suavissima est cyma," ("Of all the 
					varieties of cabbage the most pleasant-tasted is cyma"). Plinys descriptions likely refer to the 
					flowering heads of an earlier cultivated variety of Brassica oleracea, but comes close to describing 
					modern cauliflower.', '3'
 					);

INSERT INTO plant (scientific_name, common_name, price_per_plant, area_per_plant, desired_light, 
					image_link, planting_directions, region) VALUES 
					('Vulgaris subsp.cicla', 'Spinach', '0.03', '1', 'shade', 
					'http://res.cloudinary.com/ddiztoimj/image/upload/v1511887813/Spinach_ql5lvx.jpg', 
					'Spinach is thought to have originated in ancient Persia (modern Iran and neighboring countries). 
					It is not known by whom, or when, spinach was introduced to India, but the plant was subsequently 
					introduced to ancient China, where it was known as "Persian vegetable" 
					(bōsī cài; 波斯菜; present:菠菜). The earliest available record of the 
					spinach plant was recorded in Chinese, stating it was introduced 
					into China via Nepal (probably in 647 AD).[', '3'
					);

INSERT INTO plant (scientific_name, common_name, price_per_plant, area_per_plant, desired_light, 
					image_link, planting_directions, region) VALUES 
					('Frost yam', 'Snow Yam', '0.11', '1', 'shade', 
					'https://atmedia.imgix.net/9592e734016972fdb7adeb59dbfe67c1d79132e3?auto=format&q=45&w=800.0&fit=max&cs=strip', 
					'The Snow Yam is a foraging item found only in Winter. Unlike other forage items found on the ground, to obtain 
					a Snow Yam, you must dig with the Hoe. It''s not necessary to dig at an Artifact Spot, although Snow Yams 
					may be found at Artifact Spots. Snow Yams may be found by digging any tillable soil in Stardew Valley 
					outside of The Farm. They may also be grown from Winter Wild Seeds.','1'
					);

INSERT INTO plant (scientific_name, common_name, price_per_plant, area_per_plant, desired_light, 
					image_link, planting_directions, region) VALUES 
					('Persea americana', 'Avacado', '2.00', '12', 'sun', 
					'https://images.pexels.com/photos/142890/pexels-photo-142890.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb', 
					'Avocados are commercially valuable and are cultivated in tropical and Mediterranean climates 
					throughout the world. They have a green-skinned, fleshy body that may be pear-shaped, 
					egg-shaped, or spherical. Commercially, they ripen after harvesting. Avocado trees are 
					partially self-pollinating and are often propagated through grafting to maintain a predictable quality and quantity of 
					the fruit.', '5'
					);

INSERT INTO plant (scientific_name, common_name, price_per_plant, area_per_plant, desired_light, 
					image_link, planting_directions, region) VALUES 
					('Vitis labrusca Concord', 'Concord Grape', '0.07', '10', 'shade', 
					'https://images.pexels.com/photos/197907/pexels-photo-197907.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb', 
					'The Concord grape is a cultivar derived from the grape species Vitis labrusca (also called fox grape) 
					that are used as table grapes, wine grapes and juice grapes. They are often used to make grape jelly, 
					grape juice, grape pies, grape-flavored soft drinks, and candy. The grape is sometimes used to make wine, 
					particularly kosher wine. Traditionally, most commercially produced Concord wines have been 
					finished sweet, but dry versions are possible if adequate fruit ripeness is achieved.', '4'
					);

INSERT INTO plant (scientific_name, common_name, price_per_plant, area_per_plant, desired_light, 
					image_link, planting_directions, region) VALUES 
					('napus', 'Rutabaga', '0.02', '2', 'shade', 
					'https://i.pinimg.com/736x/fa/11/7b/fa117bd98c6fb1a16e41d7936acb2109--rap-simple.jpg', 
					'The first known printed reference to the rutabaga comes from the Swiss botanist Gaspard Bauhin 
					in 1620, where he notes that it was growing wild in Sweden. It is often considered to have originated 
					in Scandinavia or Russia.[8] It is said to have been widely introduced to Britain around 1800, but it 
					was recorded as being present in the royal gardens in England as early as 1669 and was 
					described in France in 1700.', '3'
					); 



-- Trial User Data, password is "Password"
INSERT INTO app_user (email, hashed_password, salt) VALUES ('trial@user.edu', 'VDkcZD/a/RrPCsq7BFMEsw==','CBhv/pvtgNgL2YPB46xW2TJ6CwySXJLrweHlzosl/JuelqQo7xHekS1+nzO1f9m5XXfWaPtlo81uYDEK8PQeSPCXRHsGyNNpHVGq+ICHDPyzxzW4/YjFojDzm3R1SOObGgmdNW0QZLSCECuugT//BMoEgEMhx2p4hotiCmAnmqo=');
INSERT INTO garden (garden_name, user_id, plot_json, region) VALUES ('Garden 1', (SELECT user_id FROM app_user WHERE email = 'trial@user.edu'),'{"version":"2.0.0-rc.1","objects":[{"type":"rect","version":"2.0.0-rc.1","originX":"center","originY":"center","left":764,"top":184,"width":200,"height":200,"fill":"#9e6c3a","stroke":null,"strokeWidth":1,"strokeDashArray":null,"strokeLineCap":"butt","strokeLineJoin":"miter","strokeMiterLimit":10,"scaleX":1,"scaleY":1,"angle":0,"flipX":false,"flipY":false,"opacity":0.9,"shadow":null,"visible":true,"clipTo":null,"backgroundColor":"","fillRule":"nonzero","paintFirst":"fill","globalCompositeOperation":"source-over","transformMatrix":null,"skewX":0,"skewY":0,"rx":4,"ry":4,"id":1},{"type":"rect","version":"2.0.0-rc.1","originX":"center","originY":"center","left":355.23,"top":187,"width":200,"height":200,"fill":"#9e6c3a","stroke":null,"strokeWidth":1,"strokeDashArray":null,"strokeLineCap":"butt","strokeLineJoin":"miter","strokeMiterLimit":10,"scaleX":1.87,"scaleY":1,"angle":0,"flipX":false,"flipY":false,"opacity":0.9,"shadow":null,"visible":true,"clipTo":null,"backgroundColor":"","fillRule":"nonzero","paintFirst":"fill","globalCompositeOperation":"source-over","transformMatrix":null,"skewX":0,"skewY":0,"rx":4,"ry":4,"id":2}],"background":"rgb(249, 252, 252)"}','3');
INSERT INTO garden (garden_name, user_id, plot_json, region) VALUES ('Garden 2', (SELECT user_id FROM app_user WHERE email = 'trial@user.edu'),'{"version":"2.0.0-rc.1","objects":[{"type":"rect","version":"2.0.0-rc.1","originX":"center","originY":"center","left":633,"top":190,"width":200,"height":200,"fill":"#9e6c3a","stroke":null,"strokeWidth":1,"strokeDashArray":null,"strokeLineCap":"butt","strokeLineJoin":"miter","strokeMiterLimit":10,"scaleX":1,"scaleY":1,"angle":0,"flipX":false,"flipY":false,"opacity":0.9,"shadow":null,"visible":true,"clipTo":null,"backgroundColor":"","fillRule":"nonzero","paintFirst":"fill","globalCompositeOperation":"source-over","transformMatrix":null,"skewX":0,"skewY":0,"rx":4,"ry":4,"id":3}],"background":"rgb(249, 252, 252)"}','3');
INSERT INTO plot (user_id, plot_name, light_level, garden_id, plant_id) VALUES('1','Plot 1','sun','1','5');
INSERT INTO plot (user_id, plot_name, light_level, garden_id, plant_id) VALUES('1','Plot 2','sun','1','10');
INSERT INTO plot (user_id, plot_name, light_level, garden_id, plant_id) VALUES('1','Plot 3','sun','2','9');
--Trial Admin Data, password is "Password"
INSERT INTO app_user (email, hashed_password, salt, admin) VALUES ('trial@admin.edu', 'VDkcZD/a/RrPCsq7BFMEsw==','CBhv/pvtgNgL2YPB46xW2TJ6CwySXJLrweHlzosl/JuelqQo7xHekS1+nzO1f9m5XXfWaPtlo81uYDEK8PQeSPCXRHsGyNNpHVGq+ICHDPyzxzW4/YjFojDzm3R1SOObGgmdNW0QZLSCECuugT//BMoEgEMhx2p4hotiCmAnmqo=',true);
INSERT INTO garden (garden_name, user_id) VALUES ('Garden 1', (SELECT user_id FROM app_user WHERE email = 'trial@admin.edu'));
INSERT INTO garden (garden_name, user_id) VALUES ('Garden 2', (SELECT user_id FROM app_user WHERE email = 'trial@admin.edu'));
--Dummy user data
INSERT INTO app_user (email, hashed_password, salt) VALUES ('trial@user2.edu', 'VDkcZD/a/RrPCsq7BFMEsw==','CBhv/pvtgNgL2YPB46xW2TJ6CwySXJLrweHlzosl/JuelqQo7xHekS1+nzO1f9m5XXfWaPtlo81uYDEK8PQeSPCXRHsGyNNpHVGq+ICHDPyzxzW4/YjFojDzm3R1SOObGgmdNW0QZLSCECuugT//BMoEgEMhx2p4hotiCmAnmqo=');
INSERT INTO garden (garden_name, region,  user_id) VALUES ('My Carrot Patch', '3', (SELECT user_id FROM app_user WHERE email = 'trial@user2.edu'));
INSERT INTO garden (garden_name, region, user_id) VALUES ('Maggies Farm', '3', (SELECT user_id FROM app_user WHERE email = 'trial@user2.edu'));
COMMIT;



