package js;

#if js
import js.html.XMLHttpRequestResponseType;
import haxe.io.Bytes;
import js.html.XMLHttpRequest;

class JsLoader {

	private var _url:String;
	private var _dataFormat:XMLHttpRequestResponseType;

	private var _oReq:XMLHttpRequest;

	public function new(url:String, dataFormat:XMLHttpRequestResponseType = XMLHttpRequestResponseType.ARRAYBUFFER) {
		_url = url;
		_dataFormat = dataFormat;
	}

	public function load():Promise<Bytes> {
		return new Promise(function(resolve, reject) {
			_oReq = new XMLHttpRequest();
			_oReq.open("GET", this._url, true);
			_oReq.responseType = this._dataFormat;
			_oReq.onload = function(oEvent) {
				var arrayBuffer = _oReq.response;
				if (arrayBuffer != null) {
					var bytes = Bytes.ofData(arrayBuffer);
					resolve(bytes);

				}
			};
			_oReq.send();
		});
	}

}
#end