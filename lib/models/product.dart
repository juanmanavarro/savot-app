import 'dart:ui';

class Product {
	String id;
	String url;
	String name;
	double price;
	String image;
	String platform;
	String currency;
	double cashback;
	String productId;

	Product({
		this.id,
		this.url,
		this.name,
		this.price,
		this.image,
		this.platform,
		this.currency,
		this.cashback,
		this.productId,
	});

	@override
	String toString() {
		return 'Product(id: $id, url: $url, name: $name, price: $price, image: $image, platform: $platform, currency: $currency, cashback: $cashback, productId: $productId)';
	}

	factory Product.fromJson(Map<String, dynamic> json) {
		return Product(
			id: json['id'] as String,
			url: json['url'] as String,
			name: json['name'] as String,
			price: json['price'] as double,
			image: json['image'] as String,
			platform: json['platform'] as String,
			currency: json['currency'] as String,
			cashback: json['cashback'] as double,
			productId: json['product_id'] as String,
		);
	}

	Map<String, dynamic> toJson() {
		return {
			'id': id,
			'url': url,
			'name': name,
			'price': price,
			'image': image,
			'platform': platform,
			'currency': currency,
			'cashback': cashback,
			'product_id': productId,
		};
	}

	Product copyWith({
		String id,
		String url,
		String name,
		double price,
		String image,
		String platform,
		String currency,
		double cashback,
		String productId,
	}) {
		return Product(
			id: id ?? this.id,
			url: url ?? this.url,
			name: name ?? this.name,
			price: price ?? this.price,
			image: image ?? this.image,
			platform: platform ?? this.platform,
			currency: currency ?? this.currency,
			cashback: cashback ?? this.cashback,
			productId: productId ?? this.productId,
		);
	}

	@override
	bool operator ==(Object o) =>
			o is Product &&
			identical(o.id, id) &&
			identical(o.url, url) &&
			identical(o.name, name) &&
			identical(o.price, price) &&
			identical(o.image, image) &&
			identical(o.platform, platform) &&
			identical(o.currency, currency) &&
			identical(o.cashback, cashback) &&
			identical(o.productId, productId);

	@override
	int get hashCode {
		return hashValues(
			id,
			url,
			name,
			price,
			image,
			platform,
			currency,
			cashback,
			productId,
		);
	}
}
