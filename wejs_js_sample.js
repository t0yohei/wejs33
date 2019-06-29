// 関数
function multiple(num) {
  return num * 2;
}
console.log(multiple(10)); // => 20

// 無名関数
const anonymousMultiple = function(num) {
  return num * 2;
};
console.log(anonymousMultiple(10)); // => 20

object = {};
function multiple(num) {
  return num * 2;
}
object.multiple = multiple;
console.log(object.multiple(10)); // => 20

object = {
  multiple: function(num) {
    return num * 2;
  }
};
console.log(object.multiple(10)); // => 20

object = {
  multiple(num) {
    return num * 2;
  }
};
console.log(object.multiple(10)); // => 20

class Sample {
  instance_method() {
    console.log("instance method が呼び出されました");
  }
}

const sampleInstanceObject = new Sample(); // クラスからインスタンスオブジェクトの生成
sampleInstanceObject.instance_method(); // インスタンスメソッドの呼び出し


function sample_function() {
  console.log('sample_function の実行結果')
}
const sample_valiable = sample_function
sample_valiable() 
