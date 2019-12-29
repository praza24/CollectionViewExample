import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let teams = ["Liverpool", "Chelsea", "Arsenal", "Manchester United", "Everton", "Watford"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return teams.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? DummyCell else { preconditionFailure("Unable to dequeue DummyCell")}
        cell.teamsLabel.text = teams[indexPath.item]
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }

}

//MARK: TO DO: Apply constraints to the CollectionView Cell
//TEST OUT DIFFABLE Datasource
//TEST OUT DELEGATE FLOW LAYOUT METHODS
//Customise the shape of the cell

//When using a custom cell make sure Estimate Size is selected to none


