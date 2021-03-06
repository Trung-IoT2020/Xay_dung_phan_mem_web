<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CategoryRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
          'txtCateName' => 'required|unique:categories,name|max:255|min:3'
        ];
    }
    public function messages()
{
    return [
        'txtCateName.required' => 'Vui lòng nhập vào trường này',
        'txtCateName.unique'  => 'Tên categories đã tồn tại',
        'txtCateName.max'  => 'Vui lòng không nhập quá 255 ký tự',
        'txtCateName.min'  => 'Vui lòng không nhập dưới 3 ký tự'
    ];
}
}
