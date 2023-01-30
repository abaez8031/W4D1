class PolyTreeNode
    attr_reader :value ,:children, :parent
 def initialize(value)
    @value = value 
    @children=[]
    @parent =nil
 end


 def add_child(node)
    node.parent = self
     
end

end