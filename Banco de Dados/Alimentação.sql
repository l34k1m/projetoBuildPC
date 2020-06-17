INSERT INTO motherboard (nome, socket, formFactor, ramSlots, maxRam, price) VALUES 
("Asus Z170-A","LGA1151","ATX",4,"64GB",150.99),
("Gigabyte GA-H110M-A","LGA1151","Micro ATX",2,"32GB",53.99),
("Asus M5A78L-M/USB3","AM3","Micro ATX",4,"32GB",39.99),
("Asus MAXIMUS VII HERO","LGA1150","ATX",4,"32GB",220.00);

INSERT INTO cpu (nome, speed, socket, cores, tdp, price) VALUES
("Intel Core i7-6700K","4.0Ghz","LGA1151",4,"91W",345.99),
("Intel Core i7-3770K","3.5Ghz","LGA1155",4,"77W",299.99),
("Intel Xeon E3-1231 V3","3.4Ghz","LGA2011v3",4,"80W",239.99),
("AMD FX-8350","4.0Ghz","AM3",8,"125W",159.99),
("Intel Core i5 4690K","3.9GHz","LGA1155",4,"95W",709.99);

INSERT INTO ram (nome, speed, tipo, modulos, tamanho, price) VALUES
("Kingston HyperX Fury White","DDR3-1866","240-pin DIMM","2x4GB","8GB",36.67),
("G.Skill Ripjaws X Series","	DDR3-1866","240-pin DIMM","2x4GB","8GB",47.98),
("Corsair Vengeance Pro","DDR3-1866","240-pin DIMM","2x8GB","16GB",74.88),
("Crucial Ballistix Sport","DDR3-1600	","240-pin DIMM","2x8GB","16GB",58.99),
("Corsair Select Value","1600MHz","DDR3","2x8GB","16GB",45.00);

INSERT INTO gpu (nome, chipset, memoria, clock, price) VALUES
("Sapphire 21260-00-20G","Radeon RX 480","8GB","1.12Ghz",269.99),
("MSI GTX 970 GAMING 4G","GeForce GTX 970","4GB","1.14Ghz",279.99),
("EVGA 02G-P4-2957-KR","GeForce GTX 950","2GB","1.19Ghz",139.99),
("AMD FirePro W7000","FirePro W7000","4GB","950MHz",618.99);

INSERT INTO armazenamento (nome, formato, tipo, capacidade, cache, price) VALUES
("Western Digital WD10EZEX","3.5\"","7200RPM	","1TB","64MB",47.49),
("Samsung MZ-75E250B/AM","2.5\"","SSD","250GB",NULL,90.58),
("Seagate ST2000DM001","3.5\"","7200RPM","2TB	","64MB",60.00),
("Samsung MZ-75E500B/AM","2.5\"","SSD","500GB",NULL,161.56),
("SanDisk Extreme PRO","SATA 2.5\"","SSD","240GB","256MB",120.00);

INSERT INTO psu (nome, potencia, padrao, eightyPlus, modular, price) VALUES
("Corsair RM650","650W","ATX","Gold","Sim",350),
("Corsair RM850","850W","ATX","Gold","Sim",450),
("Corsair RM1000","1000W","ATX","Gold","Sim",520),
("Corsair AXi1200","1200W","ATX","Platinum","Sim",750),
("Corsair AXi1500","1500W","ATX","Platinum","Sim",900);


INSERT INTO gabinete (nome, classe, moboPadrao, slotWater, acrilico, conexoes, price) VALUES
("Corsair 350R","Mid Tower","ATX, mATX","2x120mm","Não","Sim",200),
("Corsair Obsidian 550","Mid Tower","ATX, mATX","2x140mm","Sim","Sim",300),
("Corsair Obsidian 650","Mid Tower","ATX, mATX","2x140mm","Sim","Sim",400),
("Corsair Obsidian 750","Full Tower","ATX, eATX","2x140mm","Sim","Sim",500),
("Cooler Master Cosmos II","Full Tower","ATX, eATX","2x140mm x2","Sim","Sim",800);