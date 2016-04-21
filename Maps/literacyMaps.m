figure('name','Literacy','NumberTitle','off');
worldmap('india');
geoshow(states);
data = literacydata(1);
[r, g, b] = getcolor(data);
symbols = makesymbolspec('Polygon', ...
    {'NAME_1','Andhra Pradesh','FaceColor',[r(1),g(1),b(1)]}, ...
    {'NAME_1','Telangana','FaceColor',[r(1),g(1),b(1)]}, ...
    {'NAME_1','Arunachal Pradesh','FaceColor',[r(2),g(2),b(2)]}, ...
    {'NAME_1','Assam','FaceColor',[r(3),g(3),b(3)]}, ...
    {'NAME_1','Bihar','FaceColor',[r(4),g(4),b(4)]}, ...
    {'NAME_1','Chhattisgarh','FaceColor',[r(5),g(5),b(5)]}, ...
    {'NAME_1','Goa','FaceColor',[r(6),g(6),b(6)]}, ...
    {'NAME_1','Gujarat','FaceColor',[r(7),g(7),b(7)]}, ...
    {'NAME_1','Haryana','FaceColor',[r(8),g(8),b(8)]}, ...
    {'NAME_1','Himachal Pradesh','FaceColor',[r(9),g(9),b(9)]}, ...
    {'NAME_1','Jammu and Kashmir','FaceColor',[r(10),g(10),b(10)]}, ...
    {'NAME_1','Jharkhand','FaceColor',[r(11),g(11),b(11)]}, ...
    {'NAME_1','Karnataka','FaceColor',[r(12),g(12),b(12)]}, ...
    {'NAME_1','Kerala','FaceColor',[r(13),g(13),b(13)]}, ...
    {'NAME_1','Madhya Pradesh','FaceColor',[r(14),g(14),b(14)]}, ...
    {'NAME_1','Maharashtra','FaceColor',[r(15),g(15),b(15)]}, ...
    {'NAME_1','Manipur','FaceColor',[r(16),g(16),b(16)]}, ...
    {'NAME_1','Meghalaya','FaceColor',[r(17),g(17),b(17)]}, ...
    {'NAME_1','Mizoram','FaceColor',[r(18),g(18),b(18)]}, ...
    {'NAME_1','Nagaland','FaceColor',[r(19),g(19),b(19)]}, ...
    {'NAME_1','Orissa','FaceColor',[r(20),g(20),b(20)]}, ...
    {'NAME_1','Punjab','FaceColor',[r(21),g(21),b(21)]}, ...
    {'NAME_1','Rajasthan','FaceColor',[r(22),g(22),b(22)]}, ...
    {'NAME_1','Sikkim','FaceColor',[r(23),g(23),b(23)]}, ...
    {'NAME_1','Tamil Nadu','FaceColor',[r(24),g(24),b(24)]}, ...
    {'NAME_1','Tripura','FaceColor',[r(25),g(25),b(25)]}, ...
    {'NAME_1','Uttar Pradesh','FaceColor',[r(26),g(26),b(26)]}, ...
    {'NAME_1','Uttaranchal','FaceColor',[r(27),g(27),b(27)]}, ...
    {'NAME_1','West Bengal','FaceColor',[r(28),g(28),b(28)]}, ...
    {'NAME_1','Andaman and Nicobar','FaceColor',[r(29),g(29),b(29)]}, ...
    {'NAME_1','Chandigarh','FaceColor',[r(30),g(30),b(30)]}, ...
    {'NAME_1','Dadra and Nagar Haveli','FaceColor',[r(31),g(31),b(31)]}, ...
    {'NAME_1','Daman and Diu','FaceColor',[r(32),g(32),b(32)]}, ...
    {'NAME_1','Delhi UT','FaceColor',[r(33),g(33),b(33)]}, ...
    {'NAME_1','Lakshadweep','FaceColor',[r(34),g(34),b(34)]}, ...
    {'NAME_1','Puducherry','FaceColor',[r(35),g(35),b(35)]});
geoshow(states,'SymbolSpec',symbols, ...
    'DefaultFaceColor','blue','DefaultEdgeColor','black');