<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    protected $fillable = ['user_id','product_id','qty'];

   public function product(){
      return $this->BelongsTo('App\Product');
   }
   public function user(){
    return $this->BelongsTo('App\User');
   }
}
