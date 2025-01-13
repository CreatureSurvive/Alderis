//
//  ColorPickerMapViewController 2.swift
//  Alderis
//
//  Created by Dana Buehre on 1/13/25.
//

import UIKit

internal class ColorPickerSystemViewController: ColorPickerTabViewController {

	static let title = "Color Wheel"
	static let imageName = "circle.grid.3x3.fill"

	private var collectionView: UICollectionView!
	private var sliders = [ColorPickerMapSlider]()
	private var dataSource: [ColorGroup] = [
		.defaultLightSystemColorsGroup,
		.defaultDarkSystemColorsGroup,
		.defaultGrayColorsGroup,
		.defaultDarkGrayColorsGroup,
		.defaultLightLabelColorsGroup,
		.defaultDarkLabelColorsGroup,
		.defaultLightSeparatorColorsGroup,
		.defaultDarkSeparatorColorsGroup,
		.defaultLightFillColorsGroup,
		.defaultDarkFillColorsGroup,
		.defaultLightBackgroundColorsGroup,
		.defaultDarkBackgroundColorsGroup,
		.defaultStandardColorsGroup,
		.defaultPrimaryColorsGroup,
		.defaultHueColorsGroup
	]

	override func viewDidLoad() {
		super.viewDidLoad()

		let layout: UICollectionViewFlowLayout = .init()
		layout.itemSize = CGSize(width: UIFloat(30), height: UIFloat(30))
		layout.headerReferenceSize = CGSize(width: UIFloat(40), height: UIFloat(30))
		layout.minimumInteritemSpacing = UIFloat(8)
		layout.minimumLineSpacing = UIFloat(8)
		layout.scrollDirection = .vertical

		collectionView = .init(frame: .zero, collectionViewLayout: layout)
		collectionView.backgroundColor = nil
		collectionView.dataSource = self
		collectionView.delegate = self
		collectionView.showsVerticalScrollIndicator = false
		collectionView.showsHorizontalScrollIndicator = false
		collectionView.register(
			ColorGroupCell.self,
			forCellWithReuseIdentifier: ColorGroupCell.identifier
		)
		collectionView.register(
			ColorGroupHeaderCell.self,
			forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
			withReuseIdentifier: ColorGroupHeaderCell.identifier
		)

		sliders = [
			ColorPickerMapSlider(
				minImageName: "sun.min", maxImageName: "sun.max", component: .alpha,
				overrideSmartInvert: configuration.overrideSmartInvert
			)
		]

		sliders.forEach {
			$0.translatesAutoresizingMaskIntoConstraints = false
			$0.addTarget(self, action: #selector(sliderChanged(_:)), for: .valueChanged)
		}

		let containerView = UIView()
		collectionView.translatesAutoresizingMaskIntoConstraints = false
		containerView.addSubview(collectionView)

		let mainStackView = UIStackView(arrangedSubviews: [containerView] + sliders)
		mainStackView.translatesAutoresizingMaskIntoConstraints = false
		mainStackView.axis = .vertical
		mainStackView.alignment = .fill
		mainStackView.distribution = .fill
		view.addSubview(mainStackView)

		NSLayoutConstraint.activate([
			containerView.topAnchor.constraint(equalTo: collectionView.topAnchor),
			containerView.bottomAnchor.constraint(equalTo: collectionView.bottomAnchor, constant: UIFloat(10)),
			containerView.leadingAnchor.constraint(equalTo: collectionView.leadingAnchor),
			containerView.trailingAnchor.constraint(equalTo: collectionView.trailingAnchor),

			mainStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: UIFloat(15)),
			mainStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: UIFloat(-15)),
			mainStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: UIFloat(0)),
			mainStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: UIFloat(-10))
		])
	}

	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		colorDidChange()
	}

	@objc private func sliderChanged(_ slider: ColorPickerMapSlider) {
		var color = self.color
		slider.apply(to: &color)
		self.setColor(color)
	}

	override func colorDidChange() {
		sliders.forEach { $0.setColor(color) }
	}
}

extension ColorPickerSystemViewController: ColorPickerWheelViewDelegate {

	func colorPickerWheelView(didSelectColor color: Color) {
		self.setColor(color)
	}

}

extension ColorPickerSystemViewController: UICollectionViewDelegateFlowLayout {
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
		.init(width: UIFloat(40), height: UIFloat(40))
	}
}

extension ColorPickerSystemViewController: UICollectionViewDataSource {

	func numberOfSections(in collectionView: UICollectionView) -> Int {
		dataSource.count
	}

	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		dataSource[section].count
	}

	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ColorGroupCell.identifier, for: indexPath) as! ColorGroupCell

		cell.backgroundColor = dataSource[indexPath.section].colors[indexPath.item].uiColor

		return cell
	}

	func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
		let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: ColorGroupHeaderCell.identifier, for: indexPath) as! ColorGroupHeaderCell

		if kind == UICollectionView.elementKindSectionHeader {
			headerView.label.text = dataSource[indexPath.section].title.uppercased()
		}

		return headerView
	}

	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
		self.setColor(dataSource[indexPath.section].colors[indexPath.item])
	}
}

internal class ColorGroupHeaderCell: UICollectionReusableView {
	static let identifier = String(describing: UICollectionReusableView.self)

	let label: UILabel = UILabel()

	override init(frame: CGRect) {
		super.init(frame: frame)
		configure()
	}

	required init?(coder: NSCoder) {
		super.init(coder: coder)
		configure()
	}

	private func configure() {

		addSubview(label)
		label.font = UIFont.systemFont(ofSize: UIFloat(16), weight: .medium)
		label.textColor = Assets.secondaryLabelColor
		label.translatesAutoresizingMaskIntoConstraints = false

		NSLayoutConstraint.activate([
			label.topAnchor.constraint(equalTo: topAnchor),
			label.bottomAnchor.constraint(equalTo: bottomAnchor),
			label.leadingAnchor.constraint(equalTo: leadingAnchor),
			label.trailingAnchor.constraint(equalTo: trailingAnchor)
		])
	}
}

internal class ColorGroupCell: UICollectionViewCell {
	static let identifier = String(describing: ColorGroupCell.self)

	override init(frame: CGRect) {
		super.init(frame: frame)
		configure()
	}

	required init?(coder: NSCoder) {
		super.init(coder: coder)
		configure()
	}

	private func configure() {
		layer.cornerRadius = UIFloat(15)
		layer.masksToBounds = true
		layer.borderWidth = UIFloat(1)
		layer.borderColor = Assets.separatorColor.cgColor
	}
}
