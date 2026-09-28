---------------------------
--Week 6 HomeWork
--Name: Said Querevalu
---------------------------

-- Part A – Independent Practice

-- Create a new database 
  CREATE DATABASE week5_homework;

-- Creatin a new table
    CREATE TABLE products(
    index integer PRIMARY KEY,
    Name varchar(65),
    Description text,
    Brand varchar (55),
    Category varchar (45),
    Price numeric (6,2),
    Currency text,
    Stock integer,
    EAN numeric (15,2),
    Color text, 
    size text,
    Availability text,
    Internal_ID numeric (3,0) 
    );


-- I imported this file 'products-100.csv

--Quick Check:

    SELECT * FROM public.products

-- Now the Queries:

-- Show total inventory value
    SELECT SUM(Price * Stock) AS total_inventory_value
    FROM products;

--result:
    24452583.00

-- Find average product price per category

    SELECT Category, ROUND(AVG(Price), 2) AS average_price
    FROM products
    GROUP BY Category;

-- result:
    "Skincare"	514.67
    "Furniture"	689.00
    "Home & Kitchen"	367.50
    "Haircare"	681.67
    "Sports & Outdoors"	396.67
    "Fishing & Hunting"	100.00
    "Women's Clothing"	518.80
    "Fragrances"	477.50
    "Accessories (Bags, Hats, Belts)"	206.00
    "Office Supplies"	465.20
    "Kids' Clothing"	397.80
    "Beauty & Personal Care"	278.50
    "Health & Wellness"	268.33
    "Laptops & Computers"	328.00
    "Fitness Equipment"	703.33
    "Shoes & Footwear"	491.00
    "Camping & Hiking"	612.67
    "Cleaning Supplies"	391.33
    "Smartwatches"	32.00
    "Team Sports"	523.50
    "Men's Clothing"	464.50
    "Cameras & Accessories"	444.50
    "Automotive"	421.67
    "Grooming Tools"	702.50
    "Cycling"	799.33
    "Clothing & Apparel"	858.00
    "Smartphones"	449.25
    "Home Decor"	782.50
    "Bedding & Bath"	453.00
    "Books & Stationery"	388.50
    "Kitchen Appliances"	251.00
    "Makeup"	257.50

-- List all products where price > 500

    SELECT *
    FROM products
    WHERE Price > 500;
    
-- Result:

2	"Tablet"	"Discussion loss politics free one thousand."	"Mueller Inc"	"Shoes & Footwear"	502.00	"USD"	81	5286196620740.00	"Black"	"8x10 in"	"in_stock"	29
10	"Ultra Powerbank Brush Charger Max"	"Meeting add economic task outside."	"Brennan, Archer and Rosales"	"Fitness Equipment"	845.00	"USD"	564	4877111475333.00	"Silver"	"Extra Large"	"discontinued"	88
13	"Heater Radio"	"Ten do evidence billion perhaps read bank enter."	"Delgado-Blackwell"	"Cycling"	689.00	"USD"	156	5686660235911.00	"Orange"	"L"	"pre_order"	57
17	"Eco Iron Monitor Air"	"Color single indeed yard event popular food boy."	"Barker-Murphy"	"Automotive"	982.00	"USD"	47	7887280730963.00	"OliveDrab"	"XL"	"out_of_stock"	79
20	"Cooler Fan"	"Fall billion city share."	"Bray LLC"	"Smartphones"	529.00	"USD"	844	267078141619.00	"Bisque"	"XS"	"backorder"	22
22	"Wireless Powerbank 360 Advanced Ultra"	"Deal head decade age outside military culture."	"Carney Ltd"	"Bedding & Bath"	677.00	"USD"	418	3918763032312.00	"Beige"	"M"	"out_of_stock"	90
23	"Rechargeable Lamp Speakerphone Headphones"	"Effort own safe main walk quickly."	"Gallegos, Osborne and Carpenter"	"Skincare"	664.00	"USD"	577	1824359393441.00	"DarkBlue"	"L"	"pre_order"	26
24	"Mini Scooter Microphone"	"Maybe around expect own whether pay."	"Douglas, Thornton and Soto"	"Grooming Tools"	784.00	"USD"	510	9839666739792.00	"DimGray"	"L"	"backorder"	55
25	"Rechargeable Webcam Stove Grill"	"Movement you Mr decide history effect."	"Horn-Pope"	"Health & Wellness"	900.00	"USD"	623	6501687247749.00	"PaleGreen"	"5x7 in"	"out_of_stock"	47
26	"Mini Iron Drone Wireless Pro"	"From Congress low."	"Khan-Parrish"	"Cycling"	909.00	"USD"	797	9496081864722.00	"CadetBlue"	"XXL"	"limited_stock"	93
28	"Wireless Webcam Stove Grill"	"Pull at improve health also animal forward person."	"Henry Group"	"Clothing & Apparel"	858.00	"USD"	912	7097613907430.00	"LightSalmon"	"50x70 cm"	"limited_stock"	43
29	"Clock Brush"	"Other another must explain send somebody consider."	"Larson-Spence"	"Furniture"	985.00	"USD"	180	8301096575048.00	"SaddleBrown"	"Extra Large"	"in_stock"	40
30	"Keyboard Toaster Monitor"	"My head prove exist change."	"Bonilla-Spears"	"Kids' Clothing"	576.00	"USD"	988	6639325474032.00	"DarkSlateGray"	"L"	"pre_order"	40
33	"Advanced Microphone Cooler Eco"	"Most other newspaper beyond real."	"Morales, Weaver and Fernandez"	"Smartphones"	904.00	"USD"	532	7107438924403.00	"LightCyan"	"Extra Large"	"limited_stock"	86
36	"Smart Phone Scooter Clean"	"Reality kid create thought window."	"Marshall-Dougherty"	"Women's Clothing"	635.00	"USD"	727	7883295446066.00	"MediumVioletRed"	"10x10 cm"	"backorder"	74
38	"Ultra Dock Trimmer Automatic Edge"	"Do customer stage act send."	"Barnes-Glass"	"Kids' Clothing"	640.00	"USD"	780	2837107354495.00	"LightBlue"	"5x7 in"	"discontinued"	96
39	"Wireless Tablet Router Printer Wireless Premium Air"	"North meeting short summer situation positive candidate."	"Meyers-Hess"	"Sports & Outdoors"	781.00	"USD"	947	8247903213713.00	"BlanchedAlmond"	"XL"	"out_of_stock"	69
40	"Clean Printer Advanced Premium Sense"	"Bag away always often join seat direction."	"Williamson PLC"	"Haircare"	913.00	"USD"	820	5234087663802.00	"Moccasin"	"Small"	"discontinued"	77
42	"Ultra Speakerphone Oven Go Smart X"	"Value bill yeah tell phone."	"Zimmerman, Barr and Davis"	"Office Supplies"	999.00	"USD"	853	450118214736.00	"MediumOrchid"	"12x18 in"	"pre_order"	23
43	"Rechargeable Projector Pro"	"Bank everything ago girl."	"Levine, Martin and Mccann"	"Home Decor"	935.00	"USD"	55	655296358115.00	"SlateBlue"	"XL"	"limited_stock"	52
47	"Portable Powerbank X Air"	"Present court note medical bed red movie."	"Hanson-Schultz"	"Camping & Hiking"	599.00	"USD"	263	6854117854742.00	"Moccasin"	"Large"	"discontinued"	17
48	"Clock"	"Onto story what job require."	"Malone, Jacobson and Hudson"	"Team Sports"	731.00	"USD"	664	1382809012286.00	"FloralWhite"	"S"	"limited_stock"	55
49	"Radio Treadmill"	"Through choose record prove happen."	"Barron-Little"	"Office Supplies"	511.00	"USD"	395	5461960384619.00	"Violet"	"XL"	"discontinued"	14
51	"Mini Fridge Camera"	"Little determine at huge month."	"Decker and Sons"	"Fitness Equipment"	777.00	"USD"	832	4894233116968.00	"PaleGoldenRod"	"Extra Large"	"in_stock"	16
52	"Rechargeable Tablet Plus Portable Mini"	"Expect question how sound."	"Mooney-Gonzales"	"Fragrances"	820.00	"USD"	535	8183922928019.00	"Cyan"	"100x200 mm"	"in_stock"	19
54	"Wireless Light Toaster Lite Touch Eco"	"Oil guy table industry hand which."	"Singleton PLC"	"Bedding & Bath"	791.00	"USD"	827	3057639268476.00	"Fuchsia"	"50x70 cm"	"in_stock"	64
57	"Ultra Keyboard Compact Eco"	"Bit responsibility cover him mean call civil."	"Pace-Hodges"	"Books & Stationery"	514.00	"USD"	491	8481605893389.00	"LightGray"	"8x10 in"	"backorder"	19
58	"Portable Scale Speaker Powerbank Clean"	"Throughout special new you view season within."	"Morris LLC"	"Women's Clothing"	689.00	"USD"	332	5175038823985.00	"PowderBlue"	"Small"	"backorder"	94
60	"Automatic Speaker Router Lamp Prime"	"Word score education thousand high treatment."	"Sexton, Dickerson and Blair"	"Grooming Tools"	621.00	"USD"	667	6744198567221.00	"FireBrick"	"5x7 in"	"in_stock"	61
62	"Fast Fan"	"Avoid very final food scene possible."	"Ali-Oliver"	"Cleaning Supplies"	982.00	"USD"	804	3388615003133.00	"DarkOrchid"	"100x200 mm"	"backorder"	70
66	"Treadmill"	"Vote only run modern."	"Frost, Christensen and Burnett"	"Women's Clothing"	731.00	"USD"	744	4598541150958.00	"Cyan"	"5x7 in"	"out_of_stock"	70
67	"Mini Charger Lock Oven Sense Sense"	"Major tell him share allow."	"Burton, Gross and Giles"	"Haircare"	750.00	"USD"	623	9282813513019.00	"Olive"	"12x18 in"	"in_stock"	81
73	"Compact Thermostat Oven"	"Focus that consumer amount half."	"Hull Inc"	"Home & Kitchen"	685.00	"USD"	747	7695934105636.00	"SaddleBrown"	"30x40 cm"	"in_stock"	36
75	"Automatic Blender"	"Smile human machine section bank."	"Mahoney-Bryan"	"Home Decor"	630.00	"USD"	438	310774792552.00	"LightGoldenRodYellow"	"8x10 in"	"backorder"	4
76	"Rechargeable Webcam Dock Heater"	"Organization address section collection church gun consumer do."	"Kennedy-Gordon"	"Cycling"	800.00	"USD"	151	1340784358003.00	"Brown"	"XXL"	"in_stock"	66
80	"Rechargeable Brush Compact"	"Early century every amount than past."	"Castro-Mccarty"	"Automotive"	748.00	"USD"	326	6855062072649.00	"Sienna"	"S"	"out_of_stock"	81
85	"Fast Keyboard"	"Success other institution fear."	"Lewis Ltd"	"Camping & Hiking"	998.00	"USD"	10	3163238295239.00	"Cyan"	"50x70 cm"	"limited_stock"	64
87	"Silent Speakerphone Scanner Monitor"	"Quality yet significant lawyer face field yet realize."	"Cowan Inc"	"Fragrances"	593.00	"USD"	580	1710131812265.00	"Navy"	"XXL"	"discontinued"	20
90	"Digital Trimmer"	"Ago floor nice member wait."	"Christian-Tanner"	"Laptops & Computers"	541.00	"USD"	488	4147810179628.00	"SteelBlue"	"M"	"pre_order"	31
92	"Portable Scooter Wireless Digital"	"Thousand various evidence."	"Bauer Inc"	"Cameras & Accessories"	519.00	"USD"	495	4564280934296.00	"DeepSkyBlue"	"Large"	"in_stock"	36


-- Count how many products belong to one specific category (your choice):

    SELECT COUNT(*) AS total_Skincare
    FROM products
    WHERE Category = 'Skincare';

-- Result:

total_skincare
            3  

-- Use ORDER BY on price to show products from cheapest to most expensive:

SELECT Name, Category, Price
FROM products
ORDER BY Price ASC;

-- result: 

"Portable Mouse Monitor Phone"	"Kids' Clothing"	1.00
"Digital Tablet Router Printer Lite"	"Health & Wellness"	3.00
"Compact Mouse Mouse Router Mini"	"Smartwatches"	5.00
"Premium Lock Mini Advanced"	"Automotive"	12.00
"Silent Scanner Monitor Treadmill"	"Health & Wellness"	30.00
"Portable Kettle"	"Home & Kitchen"	50.00
"Wireless Watch Tablet Printer Automatic Eco Sense"	"Smartwatches"	59.00
"Ultra Projector Oven Thermostat Prime Advanced"	"Laptops & Computers"	68.00
"Smart Lamp"	"Bedding & Bath"	71.00
"Silent Dock Fast"	"Fishing & Hunting"	100.00
"Webcam Dock Heater"	"Cleaning Supplies"	101.00
"Silent Printer Fan Shaver"	"Sports & Outdoors"	102.00
"Heater Keyboard"	"Office Supplies"	103.00
"Advanced Router Rechargeable"	"Kitchen Appliances"	121.00
"Automatic Cooler Edge"	"Beauty & Personal Care"	124.00
"Silent Trimmer Shaver Fast"	"Smartphones"	130.00
"Silent Webcam Webcam Treadmill Sense Portable Advanced"	"Makeup"	148.00
"Webcam Stove Grill"	"Automotive"	159.00
"Digital Stove Silent Pro"	"Health & Wellness"	161.00
"Portable Camera Plus Air Ultra"	"Women's Clothing"	197.00
"Thermostat Trimmer"	"Accessories (Bags, Hats, Belts)"	206.00
"Ultra Cooler Treadmill Touch Pro Ultra"	"Fragrances"	214.00
"Fast Camera Router Fan Smart"	"Cleaning Supplies"	221.00
"Advanced Camera Heater Webcam X Ultra Prime"	"Office Supplies"	224.00
"Smart Blender Cooker"	"Kitchen Appliances"	227.00
"Eco Heater Toaster Stove Silent Sense"	"Cleaning Supplies"	232.00
"Bicycle"	"Smartphones"	234.00
"Clean Blender Scale Lite"	"Camping & Hiking"	241.00
"Wireless Dock"	"Health & Wellness"	257.00
"Eco Vacuum"	"Health & Wellness"	259.00
"Compact Printer Air Advanced Digital"	"Books & Stationery"	265.00
"Brush"	"Bedding & Bath"	273.00
"Smart Trimmer Webcam Heater"	"Automotive"	279.00
"Wireless Scooter Clean Mini"	"Fragrances"	283.00
"Fast Thermostat Microphone Scooter"	"Beauty & Personal Care"	289.00
"Clean Iron Premium Air Wireless"	"Beauty & Personal Care"	293.00
"Fast Vacuum Cooler"	"Sports & Outdoors"	307.00
"Automatic Watch Lite Sense"	"Team Sports"	316.00
"Eco Freezer Powerbank Watch"	"Cleaning Supplies"	340.00
"Ultra Mixer Toaster Toaster Smart"	"Women's Clothing"	342.00
"Portable Freezer Phone Automatic Smart"	"Automotive"	350.00
"Mini Drone X Portable"	"Books & Stationery"	352.00
"Clean Toaster Oven Air Touch"	"Kids' Clothing"	365.00
"Fast Heater Cooker Compact Silent"	"Makeup"	367.00
"Scooter"	"Cameras & Accessories"	370.00
"Router"	"Laptops & Computers"	375.00
"Ultra Radio Radio"	"Haircare"	382.00
"Fridge Cooker"	"Furniture"	393.00
"Automatic Trimmer Sense"	"Kitchen Appliances"	405.00
"Automatic Brush Fast Eco"	"Kids' Clothing"	407.00
"Tablet"	"Beauty & Personal Care"	408.00
"Wireless Fan Thermostat Max Automatic Max"	"Books & Stationery"	423.00
"Radio"	"Skincare"	426.00
"Smart Webcam Projector Lock"	"Men's Clothing"	440.00
"Eco Radio"	"Skincare"	454.00
"Scanner"	"Cleaning Supplies"	472.00
"Premium Bicycle Microphone"	"Shoes & Footwear"	480.00
"Smart Grill Tablet Fridge Go Smart Smart"	"Fitness Equipment"	488.00
"Advanced Freezer Advanced Advanced"	"Office Supplies"	489.00
"Oven Speaker Fan"	"Men's Clothing"	489.00
"Tablet"	"Shoes & Footwear"	502.00
"Radio Treadmill"	"Office Supplies"	511.00
"Ultra Keyboard Compact Eco"	"Books & Stationery"	514.00
"Portable Scooter Wireless Digital"	"Cameras & Accessories"	519.00
"Cooler Fan"	"Smartphones"	529.00
"Digital Trimmer"	"Laptops & Computers"	541.00
"Keyboard Toaster Monitor"	"Kids' Clothing"	576.00
"Silent Speakerphone Scanner Monitor"	"Fragrances"	593.00
"Portable Powerbank X Air"	"Camping & Hiking"	599.00
"Automatic Speaker Router Lamp Prime"	"Grooming Tools"	621.00
"Automatic Blender"	"Home Decor"	630.00
"Smart Phone Scooter Clean"	"Women's Clothing"	635.00
"Ultra Dock Trimmer Automatic Edge"	"Kids' Clothing"	640.00
"Rechargeable Lamp Speakerphone Headphones"	"Skincare"	664.00
"Wireless Powerbank 360 Advanced Ultra"	"Bedding & Bath"	677.00
"Compact Thermostat Oven"	"Home & Kitchen"	685.00
"Heater Radio"	"Cycling"	689.00
"Portable Scale Speaker Powerbank Clean"	"Women's Clothing"	689.00
"Treadmill"	"Women's Clothing"	731.00
"Clock"	"Team Sports"	731.00
"Rechargeable Brush Compact"	"Automotive"	748.00
"Mini Charger Lock Oven Sense Sense"	"Haircare"	750.00
"Mini Fridge Camera"	"Fitness Equipment"	777.00
"Wireless Tablet Router Printer Wireless Premium Air"	"Sports & Outdoors"	781.00
"Mini Scooter Microphone"	"Grooming Tools"	784.00
"Wireless Light Toaster Lite Touch Eco"	"Bedding & Bath"	791.00
"Rechargeable Webcam Dock Heater"	"Cycling"	800.00
"Rechargeable Tablet Plus Portable Mini"	"Fragrances"	820.00
"Ultra Powerbank Brush Charger Max"	"Fitness Equipment"	845.00
"Wireless Webcam Stove Grill"	"Clothing & Apparel"	858.00
"Rechargeable Webcam Stove Grill"	"Health & Wellness"	900.00
"Advanced Microphone Cooler Eco"	"Smartphones"	904.00
"Mini Iron Drone Wireless Pro"	"Cycling"	909.00
"Clean Printer Advanced Premium Sense"	"Haircare"	913.00
"Rechargeable Projector Pro"	"Home Decor"	935.00
"Fast Fan"	"Cleaning Supplies"	982.00
"Eco Iron Monitor Air"	"Automotive"	982.00
"Clock Brush"	"Furniture"	985.00
"Fast Keyboard"	"Camping & Hiking"	998.00
"Ultra Speakerphone Oven Go Smart X"	"Office Supplies"	999.00

-- Extra Query, Find the inventory value by category, from highest to lowest.

    SELECT Category, SUM(Price * Stock) AS category_inventory_value
    FROM products
    GROUP BY Category
    ORDER BY category_inventory_value DESC;

-- result:

"Fitness Equipment"	1594452.00
"Haircare"	1460008.00
"Office Supplies"	1433073.00
"Cleaning Supplies"	1425491.00
"Women's Clothing"	1341950.00
"Kids' Clothing"	1211123.00
"Bedding & Bath"	1144000.00
"Smartphones"	1133480.00
"Fragrances"	1002545.00
"Cycling"	952757.00
"Sports & Outdoors"	906085.00
"Automotive"	880948.00
"Health & Wellness"	857113.00
"Beauty & Personal Care"	854991.00
"Skincare"	843548.00
"Books & Stationery"	821837.00
"Grooming Tools"	814047.00
"Clothing & Apparel"	782496.00
"Kitchen Appliances"	657968.00
"Men's Clothing"	634967.00
"Team Sports"	589348.00
"Laptops & Computers"	586793.00
"Home & Kitchen"	532345.00
"Cameras & Accessories"	479275.00
"Furniture"	373407.00
"Home Decor"	327365.00
"Camping & Hiking"	261748.00
"Shoes & Footwear"	215382.00
"Accessories (Bags, Hats, Belts)"	139462.00
"Makeup"	103173.00
"Fishing & Hunting"	80200.00
"Smartwatches"	11206.00

-- Part B – Quick Skim

--One new concept: I learned that a JOIN can connect related tables using a common column, such as a primary key and foreign key. 
--Different types of joins, like LEFT JOIN, RIGHT JOIN, and FULL OUTER JOIN, can return different sets of matching and non-matching data.


--One question I have: In this chapter, my question is the next:
-- This appear in "Relating Tables with Key Columns"
-- What is the purpose of the UNIQUE (dept, city) constraint on the departments table? What situation does it prevent?










