var React = require('react-native');
var { requireNativeComponent, PropTypes, NativeModules, } = React;

var {
  ScaleToFill,
  ScaleAspectFit,
  ScaleAspectFill
} = NativeModules.RNFLAnimatedImageManager;

var MODES = {
  'stretch': ScaleToFill,
  'contain': ScaleAspectFit,
  'cover': ScaleAspectFill
}

var FLAnimatedImage = React.createClass({
  propTypes: {
    /*
      native only
    */
    contentMode: PropTypes.number,
    /*

    */
    src: PropTypes.string,
    resizeMode: PropTypes.string,
    onFrameChange: PropTypes.func
  },
  render() {
    var contentMode = MODES[this.props.resizeMode] || MODES.stretch;
    return (
            <RNFLAnimatedImage 
                {...this.props} 
                contentMode={contentMode}
            />
          );
  },
});

var RNFLAnimatedImage = requireNativeComponent('RNFLAnimatedImage', FLAnimatedImage);

module.exports = FLAnimatedImage;