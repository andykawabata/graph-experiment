using Laplacians
using SparseArrays
function sparsifyGraph(sourceNodes, targetNodes)
    weights = ones(size(sourceNodes))
    G = SparseArrays.sparse(sourceNodes, targetNodes, weights)
    Gsparse = Laplacians.sparsify(G, ep=2)
    return Gsparse
end