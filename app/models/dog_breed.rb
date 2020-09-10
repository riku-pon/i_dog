class DogBreed < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '柴犬' },
    { id: 3, name: '紀州犬' },
    { id: 4, name: '四国犬' },
    { id: 5, name: '北海道犬' },
    { id: 6, name: '甲斐犬' },
    { id: 7, name: '秋田犬' },
  ]
end
