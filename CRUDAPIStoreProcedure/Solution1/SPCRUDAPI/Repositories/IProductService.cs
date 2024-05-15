using SPCRUDAPI.Models;

namespace SPCRUDAPI.Repositories
{
    public interface IProductService
    {
        Task<int> AddProductAsync(Product product);
        Task<int> DeleteProductAsync(int ProductId);
        Task<IEnumerable<Product>> GetProductByIdAsync(int ProductId);
        Task<List<Product>> GetProductListAsync();
        Task<int> UpdateProductAsync(Product product);
    }
}