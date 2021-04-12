//
//  ResultViewController.swift
//  numerology
//
//  Created by Yang Nina on 2021/4/12.
//

import UIKit

class ResultViewController: UIViewController {
    var starsign:UIImage
    var lifecode:String = "?"
    
    @IBOutlet weak var QlifecodeLabel: UILabel!
    @IBOutlet weak var starsignImg: UIImageView!
    @IBOutlet weak var personality: UILabel!
    @IBOutlet weak var starsigndetail: UILabel!
    @IBOutlet weak var lifecodemain: UILabel!
    @IBOutlet weak var lifecodedetail: UILabel!
    @IBOutlet weak var lifecodedetail2: UILabel!
    init?(coder: NSCoder, lifecode: String, starsign: UIImage) {
        self.lifecode = lifecode
        self.starsign = starsign
        super.init(coder: coder)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        starsignImg.image = starsign
        QlifecodeLabel.text = lifecode
        starsignDetail()
        lifecodeDetail()
    }
    func starsignDetail(){
        if starsignImg.image == UIImage(named: "aquarius"){
            personality.text = "睿智、獨立、叛逆"
            starsigndetail.text = "個性獨立而執著。經常有一些激進、革新式的見地，屬於新時代的人物，有豐富的同胞愛和民主意識，能夠打破社會階級和人種的差異，培育真正的友情。對於一些既成的觀念，為了忠於自的信念，會激動地試圖抵抗。這種類型的人，經常見於為了達成共同目的面結朋組黨，發起運動的人。"
        }
        else if starsignImg.image == UIImage(named: "pisces"){
            personality.text = "浪漫、富同情心、不切實際"
            starsigndetail.text = "才華洋溢，喜歡幻想。依賴心強，能適應不同的環境和立場。有豐富的創造能力和藝術才華，沉溺於詩般的情節和夢想，認為真正的幸福是身靈合的世界。選擇遠離俗世的生活，在物質上不會有太大的成就。富於同情，有犧牲自我的精神，尤其同情社會上的弱者和不幸的人。"
        }
        else if starsignImg.image == UIImage(named: "aries"){
            personality.text = "勇氣、鬥志、好勝"
            starsigndetail.text = "有高度的容忍性。有不畏艱辛的意志力以及鬥爭本能。心中一旦有了理想，必能排除萬難，勇往直前。在新的環境下，能發揮拓荒者的精神，帶頭領軍，開創新機，頗有領導者的風範。同時，也有侵略的一面，最大的快樂是排除萬難讓艱難的事情進入軌道。"
        }
        else if starsignImg.image == UIImage(named: "taurus"){
            personality.text = "謹慎、溫和、務實"
            starsigndetail.text = "個性溫和又堅實，性情沈著而踏實。對事物雖然猶豫不定，但是一旦決定下來，就能以堅忍不拔的精神，執著向前。忍耐力強，行事慎重，但也有頑固的一面。受人之託必能忠人之事，絕不會中途放棄。佔有欲強，比較追求物質上的滿足，而且堅持事物的完美度，是一個藝術設計及園藝方面非常有才氣的人。為人幽默、風趣，常能得到朋友的親睞。"
        }
        else if starsignImg.image == UIImage(named: "gemini"){
            personality.text = "機智、善變、好奇心旺盛"
            starsigndetail.text = "個性敏銳又快捷。有強烈的好奇心和求知慾，對於新觀念和新流行的感觸十分敏銳。聰明機智，有辯才，是一個謀略家和演說家。遇事都能妥善對座，冷靜觀察，果敢而有擔當。而且常會有一些突發奇想的點子，有大膽假設，小心求證的個性。"
        }
        else if starsignImg.image == UIImage(named: "cancer"){
            personality.text = "敏感、情緒化、外剛內柔"
            starsigndetail.text = "親和謙恭，頗有公眾意識，有強烈的防衛本能，不願私生活受到干擾。大體上是一個溫和內向的人，但是絕不向惡勢力低頭。熱心參加愛家、愛鄉、愛民的團體，自我意識很強，尊敬能夠保護自己立場的人，帶有懷舊的心情，是一個十分傳統的人。"
        }
        else if starsignImg.image == UIImage(named: "leo"){
            personality.text = "慷慨、霸氣、自尊心強"
            starsigndetail.text = "為人正直，頗具威嚴，喜歡以自己的魅力和才能開創出一片天地，並熱衷於權力地位。處理事務時會採取光明磊落、全力以赴的做法，厭惡卑劣的小人行徑。有演戲的才華，對自己充滿自信，近乎自戀。另一方面，由於心胸寬大，自能吸引群眾。不過，容易被自己的情緒左右，經常覺得孤獨。"
        }
        else if starsignImg.image == UIImage(named: "virgo"){
            personality.text = "細心、嘮叨、完美主義"
            starsigndetail.text = "為人勤勉，一絲不苟，喜歡接觸社會，行事採取合理主義，是一個對社會頗有貢獻的人。對人體貼入微，做起事來也有大將之風，但是有時過於小心，反而無法掌握大綱，不過大體上作是一個有計畫和實務能大的人，而且一向本著良心做事。在個性上思慮較多，富於批判精神，容易成為鋒利的評論家。有濃厚的道德觀念。"
        }
        else if starsignImg.image == UIImage(named: "libra"){
            personality.text = "優柔寡斷、追求公平"
            starsigndetail.text = "個性穩健而理智。有優秀的平衡感和公正的判斷力，善於協調，在相反的意見中往往能擔負起調停的責任。凡事講求邏輯和策略，絕對不以暴力解決事情，而是以巧妙的手腕，在對等的權利和利害中找出平衡點。八面玲瓏，頗有社交才華，容易博得在上位者的眷顧和禮遇。"
        }
        else if starsignImg.image == UIImage(named: "scorpio"){
            personality.text = "神秘、愛恨分明、佔有慾強"
            starsigndetail.text = "個性強烈衝動。有足夠的精力和膽識，不懼艱難。觀察力敏銳，經常能夠洞悉事情的真相，對事物也有獨到的見解。行事時，採用完全的破壞和創新方式，充滿神祕的色彩。從無害人之心，但是人若負我，則會反擊報復對方，採取適當的回應手段。對精神和物質的要求很高，同時也付出相當的努力，奮戰不懈，對愛恨的反應，十分強烈。"
        }
        else if starsignImg.image == UIImage(named: "sagittarius"){
            personality.text = "博學、樂觀、愛冒險"
            starsigndetail.text = "個性率直而開朗，對正義和真理抱持著極高的期許，希望自己能有多於常人的知識和經驗。注重精神生活，喜好哲學性的思想，熱衷於遠在個人之上的全人類福社及世界性的進步，但是容易流於鬆散的樂觀主義。大膽而富冒險精神，熱愛自由，無論在何種環境下都希望保持精神與行動的獨立。"
        }
        else if starsignImg.image == UIImage(named: "capricorn"){
            personality.text = "意志堅強、專注力高、勇敢"
            starsigndetail.text = "充滿智慧，思緒周密。有高度的耐力，在嚴苛的現實環境下仍然能夠耐心等待。為了使計畫周全，可以熬過漫長艱辛的準備時期，絕不鬆懈。思想深沉，熟知人間之事。或許行動不夠敏捷，但是一定會持之以恆。個性嚴謹踏實，容易孤獨。從不掩飾利己之心，但是大致上仍能獲得上位者的信賴，也頗具社會使命感，而且懂得驅吉避凶，為自己規畫出一個立身處世的藍圖。"
        }
        else{
            personality.text = ""
            starsigndetail.text = ""
        }
    }
    func lifecodeDetail(){
        if lifecode == "1"{
            lifecodemain.text = "自主"
            lifecodedetail.text = "優點：獨立、積極、創造、領導、能量,富創意與理解力，為人聰明，喜歡領導"
            lifecodedetail2.text = "缺點：強勢、獨斷、浮躁、自私、懶散、吹牛,主觀意識強，我行我素，人際關係淡薄"
        }
        else if lifecode == "2"{
            lifecodemain.text = "成全"
            lifecodedetail.text =
            "優點：敏感、體貼、柔順、和諧、依賴,個性內斂，善於分工合作，重視群體關係，喜歡受到別人肯定"
            lifecodedetail2.text = "缺點：情緒不定、優柔寡斷、難以捉摸、膚淺不安,容易因他人的意見而受到影響，不能忍耐孤獨"
        }
        else if lifecode == "3"{
            lifecodemain.text = "創意"
            lifecodedetail.text = "優點：行動、樂觀、自信、表現、社交,聰明機警，有創意，多具有藝術天份，表達能力強"
            lifecodedetail2.text = "缺點：欺瞞、虛榮浮華、憤世嫉俗、渙散不集中,任性，多只依自己的喜好行事，容易好高騭遠"
        }
        else if lifecode == "4"{
            lifecodemain.text = "務實"
            lifecodedetail.text = "優點：忠誠、次序、效率、助人、自律,組織能力強，做事條理分明，目光敏銳，能迅速掌握重點"
            lifecodedetail2.text = "缺點：獨斷獨行、心胸狹窄、容易緊張、不易妥協,固執，缺乏安全感，不敢承擔風險，因此容易讓機會溜走"
        }
        else if lifecode == "5"{
            lifecodemain.text = "自由"
            lifecodedetail.text = "優點：聰穎、冒險、適應強、多變化、學習快,能答善辯，口才極佳，熱情豪爽，講義氣，崇尚自由"
            lifecodedetail2.text = "缺點：博而不精、持續力差、毫不在乎、索求無度,不喜歡受到束縛，容易放縱，容易得罪別人"
        }
        else if lifecode == "6"{
            lifecodemain.text = "責任"
            lifecodedetail.text = "優點：穩定、信賴、熱情、正義、奉獻,情感細膩，擅長人際間的交際，喜歡幫助他人，重承諾與責任"
            lifecodedetail2.text = "缺點：缺乏自信、不切實際、好強爭辯、強行干涉,不理智時，常會做出錯誤的決定，付出不求回報時容易讓自己受傷"
        }
        else if lifecode == "7"{
            lifecodemain.text = "探究"
            lifecodedetail.text = "優點：內省、沉默、直覺、真理、理想,擅長鑽研事物，喜歡追求真理，精於算計，遇事理智"
            lifecodedetail2.text = "缺點：冷漠、自大傲慢、自我放縱、鬼鬼祟祟,處事不夠圓滑，不容易被討好，容易到手的東西不會珍惜"
        }
        else if lifecode == "8"{
            lifecodemain.text = "權威"
            lifecodedetail.text = "優點：忠貞、持續、堅定、誠懇、照料,喜歡冒險刺激，有商業頭腦，喜歡追求權力，能即知即行"
            lifecodedetail2.text = "缺點：唯物主義、無道德感、心高氣傲、排除他議,驕傲，對喜歡的東西有異常的執著，面對衝突時會勉強自己"
        }
        else if lifecode == "9"{
            lifecodemain.text = "可親"
            lifecodedetail.text = "優點：人性、啟發、活力、關懷、靈性,充滿生命力，能從創意之中獲得滿足感，處事隨機應變，見招拆招"
            lifecodedetail2.text = "缺點：卑躬屈膝、毫無原則、善於批評、沒有耐性,行事不務實，意志不夠堅定，想像太過於力豐富則會變成天馬行空"
        }
        else{
            lifecodemain.text = ""
            lifecodedetail.text = ""
            lifecodedetail2.text = ""
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
