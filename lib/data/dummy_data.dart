import '../models/flyer.dart';

final List<Flyer> dummyFlyers = [
  Flyer(
    id: '1',
    title: 'Fresh Produce Sale - 50% Off',
    storeName: 'FreshMart Grocery',
    description:
        'Get amazing discounts on all fresh fruits and vegetables. Stock up for the week with our premium quality produce at half price!',
    imageUrl: 'https://images.unsplash.com/photo-1542838132-92c53300491e?w=800',
    category: 'Grocery',
    distance: 2.5,
    views: 1200,
    validUntil: 'Valid until Jan 25, 2026',
    location: '123 Main Street, Downtown',
  ),
  Flyer(
    id: '2',
    title: 'Winter Fashion Clearance',
    storeName: 'Style Haven',
    description:
        'Huge winter clearance sale! Up to 70% off on jackets, coats, sweaters, and winter accessories. Limited stock available.',
    imageUrl:
        'https://images.unsplash.com/photo-1441986300917-64674bd600d8?w=800',
    category: 'Fashion',
    distance: 1.8,
    views: 2500,
    validUntil: 'Valid until Jan 30, 2026',
    location: '456 Fashion Avenue, Mall District',
  ),
  Flyer(
    id: '3',
    title: 'Buy 1 Get 1 Free on All Items',
    storeName: 'SaveMore Supermarket',
    description:
        'Special weekend offer! Buy any item and get another one absolutely free. Valid on groceries, snacks, beverages, and household items.',
    imageUrl:
        'https://images.unsplash.com/photo-1534723452862-4c874018d66d?w=800',
    category: 'Grocery',
    distance: 3.2,
    views: 3400,
    validUntil: 'Valid until Jan 20, 2026',
    location: '789 Shopping Boulevard, North Side',
  ),
  Flyer(
    id: '4',
    title: 'New Spring Collection Launch',
    storeName: 'TrendSetters Fashion',
    description:
        'Be the first to shop our new spring collection! Fresh styles, vibrant colors, and unbeatable quality. Visit us this weekend.',
    imageUrl:
        'https://images.unsplash.com/photo-1445205170230-053b83016050?w=800',
    category: 'Fashion',
    distance: 4.5,
    views: 1800,
    validUntil: 'Valid until Feb 05, 2026',
    location: '321 Boutique Lane, Fashion District',
  ),
  Flyer(
    id: '5',
    title: 'Organic Products - Special Pricing',
    storeName: 'Green Earth Market',
    description:
        'Organic and eco-friendly products now at amazing prices. From fresh produce to packaged goods, everything is certified organic.',
    imageUrl:
        'https://images.unsplash.com/photo-1488459716781-31db52582fe9?w=800',
    category: 'Grocery',
    distance: 2.1,
    views: 950,
    validUntil: 'Valid until Jan 28, 2026',
    location: '654 Green Street, Eco Park',
  ),
  Flyer(
    id: '6',
    title: 'Shoe Sale - Up to 60% Off',
    storeName: 'FootLocker Plus',
    description:
        'Step into savings! Massive discounts on athletic shoes, casual footwear, and formal shoes. All brands, all sizes available.',
    imageUrl:
        'https://images.unsplash.com/photo-1460353581641-37baddab0fa2?w=800',
    category: 'Fashion',
    distance: 3.8,
    views: 2100,
    validUntil: 'Valid until Jan 27, 2026',
    location: '987 Shoe Avenue, Sports Complex',
  ),
  Flyer(
    id: '7',
    title: 'Weekly Grocery Deals',
    storeName: 'MegaMart Express',
    description:
        'This week\'s hottest deals on your favorite brands. Dairy, bakery, frozen foods, and more at incredible prices.',
    imageUrl:
        'https://images.unsplash.com/photo-1601598851547-4302969d0614?w=800',
    category: 'Grocery',
    distance: 1.5,
    views: 4200,
    validUntil: 'Valid until Jan 23, 2026',
    location: '147 Express Way, City Center',
  ),
  Flyer(
    id: '8',
    title: 'Designer Outlet - Final Clearance',
    storeName: 'Luxury Fashion Outlet',
    description:
        'Final clearance on designer brands! This is your last chance to grab premium fashion at outlet prices. Don\'t miss out!',
    imageUrl:
        'https://images.unsplash.com/photo-1483985988355-763728e1935b?w=800',
    category: 'Fashion',
    distance: 5.2,
    views: 3100,
    validUntil: 'Valid until Feb 01, 2026',
    location: '258 Luxury Lane, Designer District',
  ),
];

final List<String> categories = ['All', 'Grocery', 'Fashion'];
