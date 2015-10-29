//
//  ViewController.swift
//  WeatherApp
//
//  Created by Techno on 10/28/15.
//  Copyright © 2015 Techno. All rights reserved.
//

import UIKit
import Alamofire
import QuartzCore


class ViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var myCallection: UICollectionView!
    
    let reuseIdentifier = "cell"
    var myTableData  = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        Alamofire.request(.GET, "http://api.worldweatheronline.com/free/v2/weather.ashx?q=bangalore&format=json&num_of_days=5&key=01dae309de210c1d636b23f25b109").responseJSON
            { response in switch response.result {
            case .Success(let JSON):
                //  print("Success with JSON: \(JSON)")
                
                if let dataAray = JSON["data"] as? NSDictionary {
                    
                    if let weatherArray = dataAray["weather"] as? NSArray {
                        
                        self.myTableData = weatherArray
                        
                        dispatch_async(dispatch_get_main_queue()) { [unowned self] in
                            self.myCallection.reloadData()
                        }
                        
                    }
                    
                }
                
            case .Failure(let error):
                print("Request failed with error: \(error)")
                }
        
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInCollectionView(collectionView:
        UICollectionView) -> Int {
            return 1
    }
    
    func collectionView(collectionView: UICollectionView,
        numberOfItemsInSection section: Int) -> Int {
            return  self.myTableData.count
    }
    func collectionView(collectionView: UICollectionView,
        cellForItemAtIndexPath indexPath: NSIndexPath) ->
        UICollectionViewCell {
            
            let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier,
                forIndexPath: indexPath) as! WeatherCell
            
            cell.layer.cornerRadius = 10
            
            if let dateValue = self.myTableData[indexPath.row]["date"] as? NSString {
                
                let dateFormatter = NSDateFormatter()
                dateFormatter.dateFormat = "yyy-MM-dd"
                let date = dateFormatter.dateFromString(dateValue as String)
                
                let df = NSDateFormatter()
                df.dateFormat = "dd"
                let dateStr = df.stringFromDate(date!)
                cell.DateLeabel.text = "\(dateStr)"
                
            }
            
            if let tempratureValue = self.myTableData[indexPath.row]["maxtempC"] as? NSString {
                
                cell.degreeLabel.text = "\(tempratureValue)"
                
            }
            
            if let cellImage = self.myTableData[indexPath.row]["hourly"] as? NSArray {
                
                print("cellimage ===\(cellImage)")
                if let celldic = cellImage[indexPath.row] as? NSDictionary {
                  
                    
                    if let myValueCell = celldic["weatherIconUrl"] as? NSArray{
                   
                        
                        if let myImageValueGet = myValueCell[0] as? NSDictionary {
                            
                            if let final = myImageValueGet ["value"] as? NSString {
                          
                                
                                if let url = NSURL(string: final as String) {
                                    if let data = NSData(contentsOfURL: url){
                                        cell.myImage.contentMode = UIViewContentMode.ScaleAspectFit
                                        cell.myImage.image = UIImage(data: data)
                                    }
                                }
                                
                            }
                        }
                    }
                    
                }
                
            }
            
            return cell
            
    }
    
}



