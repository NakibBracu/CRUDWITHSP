using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SPCRUDAPI.Models;
using SPCRUDAPI.Repositories;

namespace SPCRUDAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductsController : ControllerBase
    {
        private readonly IProductService _productService;
        public ProductsController(IProductService productService)
        {
            _productService = productService;
        }

        [HttpGet("getproductlist")]
        public async Task<List<Product>> GetProductListAsync() {
            try 
            {
                return await _productService.GetProductListAsync();
            }catch {
                throw;
            }
        }

        [HttpGet("getproductbyid")]
        public async Task<IEnumerable<Product>> GetProductByIdAsync(int Id)
        {
            try
            {
                var response = await _productService.GetProductByIdAsync(Id);
                if (response == null)
                {
                    return null;
                }
                return response;
            }
            catch {
                throw;
            }
        }

        [HttpPost("AddProduct")]
        public async Task<IActionResult> AddProductAsync(Product product) {

            if (product == null) { 
            return BadRequest();
            }
            try
            {
                var response = await _productService.AddProductAsync(product);
                return Ok(response);
            }
            catch {
                throw;
            }
        
        }

        [HttpPut("UpdateProduct")]
        public async Task<IActionResult> UpdateProductAsync(Product product)
        {
            if (product == null) { 
            return BadRequest();
            }
            try
            {
                var result = await _productService.UpdateProductAsync(product);
                return Ok(result);
            }
            catch {
                throw;
            }
        }

        [HttpDelete("DeleteProduct")]
        public async Task<int> DeleteProductAsync(int id) {
            try
            {
                var response = await _productService.DeleteProductAsync(id);
                return response;
            }
            catch {
                throw;
            }
        }
    }
}
