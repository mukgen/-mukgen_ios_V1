import UIKit
import Then
import SnapKit
import MukgenKit

public class DeliveryContentsView: UIView {
<<<<<<< HEAD:Mukgen/Modules/Presentation/Sources/ViewController/Delivery/DeliveryContentsMainPage/DeliveryContentsView.swift
        
    var width = 353.0
    var height = 90.0
    var bigHeight = -1
    var count = 0
    var indexPathCount = -1
=======
    
    var bigHeight = -1
    var width = 353.0
    var height = 90.0
>>>>>>> #58-tuistAsset:Mukgen/Modules/Presentation/Sources/ViewController/Delivery/DeliveryContents/DeliveryContentsView.swift
    
    
    private final var controller: UIViewController
    
    private lazy var deliveryContentsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.showsVerticalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.isScrollEnabled = true
        collectionView.backgroundColor = .clear
        collectionView.register(DeliveryContentsCell.self, forCellWithReuseIdentifier: DeliveryContentsCell.id)
        return collectionView
    }()
    
    init(frame: CGRect ,viewController: UIViewController) {
        self.controller = viewController
        super.init(frame: frame)
        deliveryContentsCollectionView.delegate = self
        deliveryContentsCollectionView.dataSource = self
        
        layout()
        deliveryContentsCollectionView.reloadData()
    }
    
<<<<<<< HEAD:Mukgen/Modules/Presentation/Sources/ViewController/Delivery/DeliveryContentsMainPage/DeliveryContentsView.swift
=======
    public var plusButton = UIButton().then {
        $0.setImage(UIImage(systemName: "plus"), for: .normal)
        $0.backgroundColor = MukgenKitAsset.Colors.pointBase.color
        $0.layer.cornerRadius = 30
    }
    
>>>>>>> #58-tuistAsset:Mukgen/Modules/Presentation/Sources/ViewController/Delivery/DeliveryContents/DeliveryContentsView.swift
    func layout() {
        self.addSubview(deliveryContentsCollectionView)
        
        deliveryContentsCollectionView.snp.makeConstraints {
            $0.height.equalTo(640.0)
            $0.top.leading.trailing.bottom.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension DeliveryContentsView: UICollectionViewDelegateFlowLayout {
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if bigHeight == 0 && indexPathCount == indexPath.row { height = 191 }
        if bigHeight == 1 && indexPathCount == indexPath.row { height = 90 }
        return CGSize(width: width, height: height)
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0.0, left: 20.0, bottom: 0.0, right: 20.0)
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
}

extension DeliveryContentsView: UICollectionViewDelegate {
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if count % 2 == 0 {bigHeight = 0}
        if count % 2 != 0 {bigHeight = 1}
        height = 191
        count += 1
        indexPathCount = indexPath.row
        collectionView.reloadData()
    }
}

extension DeliveryContentsView: UICollectionViewDataSource {
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    //cell에 관련된 것을 정의합니다.
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let deliveryContentsCell = collectionView.dequeueReusableCell(withReuseIdentifier: DeliveryContentsCell.id, for: indexPath) as! DeliveryContentsCell
<<<<<<< HEAD:Mukgen/Modules/Presentation/Sources/ViewController/Delivery/DeliveryContentsMainPage/DeliveryContentsView.swift
        if bigHeight == 0 && indexPathCount == indexPath.row {
            deliveryContentsCell.profileImage1.image = PresentationAsset.Images.testProfile1.image
            deliveryContentsCell.profileImage2.image = PresentationAsset.Images.testProfile2.image
            deliveryContentsCell.profileImage3.image = PresentationAsset.Images.testProfile3.image
=======
        if bigHeight == indexPath.row {
            deliveryContentsCell.profileImage1.image = MukgenKitAsset.Images.testProfile1.image
            deliveryContentsCell.profileImage2.image = MukgenKitAsset.Images.testProfile2.image
            deliveryContentsCell.profileImage3.image = MukgenKitAsset.Images.testProfile3.image
>>>>>>> #58-tuistAsset:Mukgen/Modules/Presentation/Sources/ViewController/Delivery/DeliveryContents/DeliveryContentsView.swift
            deliveryContentsCell.perticipatePerson1.text = "이은호"
            deliveryContentsCell.perticipatePerson2.text = "햄스터"
            deliveryContentsCell.perticipatePerson3.text = "이태영"
            deliveryContentsCell.writer.textColor = MukgenKitAsset.Colors.primaryBase.color
            deliveryContentsCell.contents.textColor = .black
            deliveryContentsCell.contents.font = .systemFont(ofSize: 14.0, weight: .semibold)
            deliveryContentsCell.perticipateIn.isHidden = false
        }
        if bigHeight == 1 && indexPathCount == indexPath.row || indexPathCount == -1 {
            deliveryContentsCell.profileImage1.image = nil
            deliveryContentsCell.profileImage2.image = nil
            deliveryContentsCell.profileImage3.image = nil
            deliveryContentsCell.perticipatePerson1.text = nil
            deliveryContentsCell.perticipatePerson2.text = nil
            deliveryContentsCell.perticipatePerson3.text = nil
            deliveryContentsCell.perticipateIn.isHidden = true
            deliveryContentsCell.writer.textColor = .black
            deliveryContentsCell.contents.textColor = .black
            deliveryContentsCell.contents.font = .systemFont(ofSize: 14.0, weight: .regular)
        }
        deliveryContentsCell.backView.backgroundColor = MukgenKitAsset.Colors.primaryLight3.color
        deliveryContentsCell.backView.layer.cornerRadius = 10.0
        return deliveryContentsCell
    }
}
