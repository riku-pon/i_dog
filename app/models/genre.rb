class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'リード' },
    { id: 3, name: 'ご飯皿' },
    { id: 4, name: '給水器' },
    { id: 5, name: 'おやつ' }
  ]
end
