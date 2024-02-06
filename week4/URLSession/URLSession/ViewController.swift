//
//  ViewController.swift
//  URLSession
//
//  Created by 林佑淳 on 2024/1/31.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stationId: UILabel!
    @IBOutlet weak var stationName: UILabel!
    @IBOutlet weak var stationAddress: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }
    
    func fetchData() {
        let url = URL(string: "https://remote-assignment.s3.ap-northeast-1.amazonaws.com/station")!
        
        let getSession = URLSession.shared
        
        let getTask = getSession.dataTask(with: url) { (data, response, error) in

            if let error = error {
                print("GET請求錯誤：\(error.localizedDescription)")
            } else if let data = data {
                //decode收到的數據
                do {
                    let decoder = JSONDecoder() 
                    let stationInfo = try decoder.decode(StationInfo.self, from: data)
                    
                    //在主線程更新UI
                    DispatchQueue.main.async {
                        self.updateUI(with: stationInfo)
                    }
                    

                } catch {
                    print("解析錯誤：\(error.localizedDescription)")
                }
            }
        }
        getTask.resume()
    }
    
    func updateUI(with stationInfo: StationInfo) {
        stationId.text = "\(stationInfo.stationID)"
        stationName.text = "\(stationInfo.stationName)"
        stationAddress.text = "\(stationInfo.stationAddress)"
    }
}
