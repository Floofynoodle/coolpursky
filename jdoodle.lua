--Script feito com a ajuda do meus amigos kiojeen e Aklads

MTD1 = nil
bb = nil

iaps = {}
SNC = {}

iapc = {
 {
	"Close Script",
	":SPASSR",
 },
 {
	"Starter pack",
	":SNC_00",
 },
 {
	"Office Cape",
	":SNC_01",
 },
 {
	"Santa Hat",
	":SNC_03",
 },
 {
	"Bat Cape",
	":SNC_05",
 },
 {
	"Pumpkin Head",
	":SNC_06",
 },
 {
	"Gratitude Furcape Pack",
	":SNC_07",
 },
 {
	"Swing",
	":SNC_08",
 },
 {
	"Earth Cape",
	":SNC_09",
 },
 {
	"White Flower (Live)",
	":SNC_10",
 },
 {
	"KizunaAi Pack (Live)",
	":SNC_12",
 },
 {
	"Lantern",
	":SNC_13",
 },
 {
	"Witch Hat",
	":SNC_14",
 },
 {
	"Web Cape",
	":SNC_15",
 },
 {
	"Pumpkin Head+BatCape",
	":SNC_16",
 },
 {
	"Days of feast Antlers",
	":SNC_17",
 },
 {
	"Snowflake Cape",
	":SNC_18",
 },
 {
	"Orange Head",
	":SNC_19",
 },
 {
	"Woolhat+Blush mask",
	":SNC_20",
 },
 {
	"Fortune Pack",
	":SNC_21",
 },
 {
	"Seesaw Pack",
	":SNC_22",
 },
 {
	"Tea Set",
	":SNC_23",
 },
 {
	"Ocean Cape",
	":SNC_24",
 },
 {
	"Ocean Necklace",
	":SNC_25",
 },
 {
	"Rainbow hair",
	":SNC_28",
 },
 {
	"Prince Scarf",
	":SNC_29",
 },
 {
	"Fox Backpack",
	":SNC_30",
 },
 {
	"Prince Asteroid Pack",
	":SNC_32",
 },
 {
	"Summer Umbrella",
	":SNC_33",
 },
 {
	"Summer Hairpin",
	":SNC_34",
 },
 {
	"Rabbit Accessory",
	":SNC_35",
 },
 {
	"Mischief Antlers",
	":SNC_36",
 },
 {
	"Mischief Witch Jumper",
	":SNC_37",
 },
 {
	"Mischief Spider Hair",
	":SNC_38",
 },
 {
	"Dark Dragon Pumpkin",
	":SNC_39",
 },
 {
	"Feast Snow Globe",
	":SNC_40",
 },
 {
	"Feast Elder Cape",
	":SNC_41",
 },
 {
	"Feast Snowflake Pin",
	":SNC_42",
 },
 {
	"Fortune Fish Accessory",
	":SNC_43",
 },
 {
	"Fortune Fish Cape",
	":SNC_44",
 },
 {
	"Gondola Boat",
	":SNC_45",
 },
 {
	"Wisteria Teaset",
	":SNC_46",
 },
 {
	"Turtle Neck Pack",
	":SNC_47",
 },
 {
	"Turtle Cape",
	":SNC_48",
 },
 {
	"Rainbow Earring",
	":SNC_49",
 },
 {
	"Rainbow Trousers",
	":SNC_50",
 },
 {
	"Triumph Handpan",
	":SNC_51",
 },
 {
	"Triumph DunDun",
	":SNC_52",
 },
 {
	"Triumph Horn",
	":SNC_53",
 },
 {
	"3rd Anniversary Guitar",
	":SNC_54",
 },
 {
	"Double Rainbow Flower",
	":SNC_55",
 },
 {
	"Rhythm Guitar",
	":SNC_56",
 },
 {
	"Fluttering Harp",
	":SNC_57",
 },
 {
	"Rainbow Headphones",
	":SNC_58",
 },
 {
	"Marshmallow Stand",
	":SNC_59",
 },
 {
	"Jellyfish Neck",
	":SNC_60",
 },
 {
	"Cat Costume Pack",
	":SNC_61",
 },
 {
	"Cat Backpack",
	":SNC_62",
 },
 {
	"Aurora Star Horn",
	":SNC_63",
 },
 {
	"Runaway Pack",
	":SNC_64",
 },
 {
	"Aurora Instrument",
	":SNC_65",
 },
 {
	"Aurora Cape",
	":SNC_66",
 },
 {
	"Orange Dress",
	":SNC_67",
 },
 {
	"Hermit Fluffy Cape",
	":SNC_68",
 },
 {
	"Skyball Set",
	":SNC_69",
 },
}

for i, v in ipairs(iapc) do
	table.insert(iaps,v[1])
	table.insert(SNC,v[2])
end

gg.alert(
	[[after you buy something, if you select other IAP, will appear the Season Pass in store
	and if you buy this season pass, the next item you have selected will appear]]
)
gg.alert(
	[[so, if you are playing on live, I advise you to restart the game after buy something]]
)

function Main()
	if MTD1 == 1 then
		os.exit()
	end
	gg.alert(
	[[
		Ok, we have 2 options,
		option 1 will load all Store iap that isn't hidden,
		option 2 will open a list to buy any IAP u want
	]]
	)
	gg.alert(
	[[
		DON'T run the script again after use "Store Only" option. if u wanna open the IAP list, restart the game
	]]
	)
	local adxd = {"Store only (Live only)","All IAPs in a list (Live and beta)","Exit"}
	local Choice = gg.choice(adxd,nil,'choose one method to start')
	if Choice == 1 then
		mtd1()
	elseif Choice == 2 then
		mtd2()
	elseif Choice == 3 then
		os.exit()
	end

end

function mtd1 ()
	gg.clearResults()
	gg.setRanges(gg.REGION_CODE_APP)
	gg.searchNumber(':season', 1,false, gg.SIGN_EQUAL,0, -1)
	gg.getResults(1000)
	gg.editAll(':global', 1)
	gg.clearResults()
    gg.setRanges(gg.REGION_OTHER| gg.REGION_C_ALLOC)
    gg.searchNumber(':global', 1,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(1000)
    gg.editAll('0', 1)
	gg.toast("Open The Store")
	MTD1 = 1
end

function mtd2 ()
	local Choice = gg.choice(iaps,nil,"Open the store to buy")
codigoIap = SNC[Choice]
if Choice == 1 then
	os.exit()
elseif bb == 1 then IAP1()
	else IAP()
end
end

function IAP()
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber(':SPASS', 1,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(1000)
    gg.editAll('0', 1)
    gg.clearResults()
    gg.setRanges(gg.REGION_OTHER| gg.REGION_C_ALLOC)
    gg.searchNumber(':SPASSR', 1,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(1000)
    gg.editAll(codigoIap, 1)
	gg.toast("Open The Store")
	bb = 1
end

function IAP1()
	gg.editAll(codigoIap, 1)
	gg.toast("Open The Store")
end

print[[
	
	By Okarin#4708
	
	]]

loop = 1
while loop < 10 do
    if gg.isVisible() then
      gg.setVisible(false)
      Main() end
    end