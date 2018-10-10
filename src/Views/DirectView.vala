public class Tootle.DirectView : TimelineView {

    public DirectView () {
        base ("direct");
    }
    
    public override string get_icon () {
        return "mail-send-symbolic";
    }
    
    public override string get_name () {
        return _("Direct Messages");
    }
    
    public override string get_title () {
        return _("DM");
    }

    public override Soup.Message? get_stream () {
        var url = "%s/api/v1/streaming/?stream=direct&access_token=%s".printf (accounts.formal.instance, accounts.formal.token);
        return new Soup.Message("GET", url);
    }

}
