<?php
namespace app\home\controller;
use app\common\controller\Base;
use Aliyun\Core\Profile\DefaultProfile;
use Aliyun\Core\DefaultAcsClient;
use Aliyun\Api\Sms\Request\V20170525\SendSmsRequest;
use Aliyun\Core\Regions\EndpointConfig;
use app\home\model\Customer as CustomerModel;
/**
 * 后台菜单管理
 */
class Phone extends Base
{
    protected function _initialize()
    {
        parent::_initialize();
        EndpointConfig::load();
    }
    /**
     * 菜单首页
     */
    public function index()
    {
        $name = $_GET['name'];
        $phone = $_GET['phone'];

        if(CustomerModel::havePhone($phone))
        {
            echo "submited";
            return ;
        }
        //此处需要替换成自己的AK信息
        $accessKeyId = "LTAIdcmo2qZa1l60";//参考本文档步骤2
        $accessKeySecret = "MaV1bBa6WtJYwkIFjvFincTxiECHRo";//参考本文档步骤2
        //短信API产品名（短信产品名固定，无需修改）
        $product = "Dysmsapi";
        //短信API产品域名（接口地址固定，无需修改）
        $domain = "dysmsapi.aliyuncs.com";
        //暂时不支持多Region（目前仅支持cn-hangzhou请勿修改）
        $region = "cn-hangzhou";
        // 服务结点
        $endPointName = "cn-hangzhou";
        //初始化访问的acsCleint
        $profile = DefaultProfile::getProfile($region, $accessKeyId, $accessKeySecret);
        // 增加服务结点
        DefaultProfile::addEndpoint($endPointName, $region, $product, $domain);
        $acsClient= new DefaultAcsClient($profile);
        $request = new SendSmsRequest;
        //必填-短信接收号码。支持以逗号分隔的形式进行批量调用，批量上限为1000个手机号码,批量调用相对于单条调用及时性稍有延迟,验证码类型的短信推荐使用单条调用的方式
        $request->setPhoneNumbers("18862314569");
        //必填-短信签名
        $request->setSignName("Easy贷");
        //必填-短信模板Code
        $request->setTemplateCode("SMS_91985057");
        //选填-假如模板中存在变量需要替换则为必填(JSON格式),友情提示:如果JSON中需要带换行符,请参照标准的JSON协议对换行符的要求,比如短信内容中包含\r\n的情况在JSON中需要表示成\\r\\n,否则会导致JSON在服务端解析失败
        $request->setTemplateParam("{\"phone\":\"".$phone."\",\"name\":\"".$name."\"}");
        //发起访问请求
        $acsResponse = $acsClient->getAcsResponse($request);
        $time = time();
        $data['update_time'] = date("y-m-d H:i",$time);
        $data['name'] = $name;
        $data['phone'] = $phone;
        CustomerModel::add($data);
        //$this->redirect('Index/index', arrar(), 5, '客户经理得到消息就会与你联系，请稍候，如果您有朋友也需要贷款，可以将主页分享给您的朋友。页面跳转中...');
    }

}
