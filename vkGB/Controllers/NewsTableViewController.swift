

import UIKit

class NewsTableViewController: UITableViewController {
    
    var newsList = [
        PostNewsStruct(name: "Swift", avatar: UIImage(named: "swift"), date: "Вчера в 17:19", textNews: "Swift 5.4 приносит с собой значительные улучшения в компиляции, включая улучшенную автоподстановку кода в выражениях, а также значительное ускорение инкрементной компиляции. А еще Swift 5.4 привносит нам новые интересные функции и усовершенствования, а которых, к слову, мы с вами и поговорим.", textImage: UIImage(named: "swift")),
        PostNewsStruct(name: "Python", avatar: UIImage(named: "python"), date: "14.06.2021 в 17:19", textNews: "Голландский программист Гвидо ван Россум создал Python в 1989-м, придерживаясь нескольких ключевых правил. На фоне других языков его детище выделялось простотой освоения, открытым и лаконичным кодом, а также командами на упрощённом английском. Python быстро завоевал признание специалистов и сформировал большое сообщество. Сейчас он, согласно данным сайта Stack Overflow, входит в десятку наиболее востребованных языков. Его активно используют именитые IT-компании: Google, Intel, YouTube, Instagram и так далее.", textImage: UIImage(named: "python")),
        PostNewsStruct(name: "C++", avatar: UIImage(named: "C++"), date: "01.01.2021 в 17:19", textNews: "С++ можно найти почти везде: в играх, программах и в таких гигантах, как Google и YouTube. Даже в Facebook, который написан почти только на PHP, есть С++. Также его используют в продуктах Adobe. У С++ сильная (строгая) типизация: разные типы переменных нельзя использовать в одном выражении, а неявные преобразования не выполняются автоматически. Это даёт уверенность, что «всё пойдёт по плану» и переменные не поведут себя неожиданно. С другой стороны, за эту уверенность приходится платить гибкостью языка.", textImage: UIImage(named: "C++"))
    ]


    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath) as! NewsTableViewCell
        
        // аватар
        cell.avatarUserNews.avatarImage.image = newsList[indexPath.row].avatar
        // имя автора
        cell.nameUserNews.text = newsList[indexPath.row].name
        // дата новости
        cell.dateNews.text = newsList[indexPath.row].date
        cell.dateNews.font = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.light)
        cell.dateNews.textColor = UIColor.gray.withAlphaComponent(0.5)
        //текст новости
        cell.textNews.text = newsList[indexPath.row].textNews
        cell.textNews.numberOfLines = 0
        //картинка к новости
        cell.imgNews.image = newsList[indexPath.row].textImage
        cell.imgNews.contentMode = .scaleAspectFill

        return cell
    }

}
