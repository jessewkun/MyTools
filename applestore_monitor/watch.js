import { httpGet } from "./utils/request.js";
import { format } from "silly-datetime";

let timer;
let model = "MLT63CH/A"; // iphone13 pro
let storeId = "R320"; // apple store id
let city = "北京"; //所在城市
let barkId = ""; // barkid
let apiAppleStroe = `https://www.apple.com.cn/shop/fulfillment-messages?pl=true&mt=compact&parts.0=${model}&searchNearby=true&store=${storeId}`;

function log(str) {
    console.log(format(new Date(), "YYYY-MM-DD HH:mm:ss") + " " + str);
}

function push(str) {
    httpGet(
        `https://api.day.app/${barkId}/AppleStoreWatcher/${encodeURI(str)}`
    );
}

async function getData() {
    let res = await httpGet(apiAppleStroe);
    let stores = res.body.content.pickupMessage.stores.filter(
        (v) => v.city == city
    );
    log("----------------------");
    stores.forEach((v) => {
        if (v.partsAvailability[model].pickupDisplay == "available") {
            push("【" + v.storeName + "】有货，请抓紧时间下单");
            log("【" + v.storeName + "】有货，请抓紧时间下单");
            // clearInterval(timer);
        } else {
            log("【" + v.storeName + "】无货，持续挂机中");
        }
    });
}

if (barkId.length == 0) {
    log("请确认你的 barkId");
} else {
    timer = setInterval(() => {
        getData();
    }, 1500);
}
