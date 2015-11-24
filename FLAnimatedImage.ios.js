var React = require('react-native');
var { requireNativeComponent, PropTypes, NativeModules } = React;

var FLAnimatedImage = React.createClass({
  propTypes: {
    src: PropTypes.string
  },
  render() {
    return <RNFLAnimatedImage {...this.props} />;
  },
});

var RNFLAnimatedImage = requireNativeComponent('RNFLAnimatedImage', FLAnimatedImage);

module.exports = FLAnimatedImage;