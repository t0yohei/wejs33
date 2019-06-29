class ObjectSample
end
object_sample = ObjectSample.new

class Sample
  def instance_method
    p 'instance method が呼び出されました'
  end
end

sample_instance_object = Sample.new # クラスからインスタンスオブジェクトの生成
sample_instance_object.instance_method # => "instance method が呼び出されました"



# -- この下実際に動かすコード --

# クラスはどうなっている？
class ObjectSample
end
ObjectSample.class # => Class (Class クラスのオブジェクト)
ObjectSample.instance_of?(Class) # => true
ObjectSample.object_id # => xx (何らかの数字)

# クラスの外で定義したメソッドは？
def something_like_function
end
something_like_function.class # => NilClass
something_like_function.instance_of?(NilClass) # => true
something_like_function.object_id # => xx (何らかの数字)



def sample_function
  p 'sample_function の実行結果'
end
sample_valiable = sample_function # => "sample_function の実行結果"
sample_valiable # => "sample_function の実行結果"

def some_function # メソッドを定義
  p 'some_function'
end
some_function = method(:some_function) # 変数にメソッドを代入
some_function.call # => "some_function" (メソッドの呼び出し)

