.class public Lcom/igexin/sdk/PushBuildConfig;
.super Ljava/lang/Object;


# static fields
.field public static sdk_conf_bilod_enable:Ljava/lang/String; = null

.field public static final sdk_conf_branch:Ljava/lang/String; = "open"

.field public static final sdk_conf_channelid:Ljava/lang/String; = "open"

.field public static final sdk_conf_debug_level:Ljava/lang/String; = "none"

.field public static final sdk_conf_domain_switch_enable:Ljava/lang/String; = "1"

.field public static final sdk_conf_newurl:Ljava/lang/String; = "http://sdk.open.phone.igexin.com/api.php"

.field public static final sdk_conf_server_address_ip:[Ljava/lang/String;

.field public static final sdk_conf_version:Ljava/lang/String; = "2.4.1.0"

.field public static final sdk_uploadapplist_enable:Ljava/lang/String; = "1"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "0"

    sput-object v0, Lcom/igexin/sdk/PushBuildConfig;->sdk_conf_bilod_enable:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "socket://sdk.open.talk.igexin.com:5224"

    aput-object v2, v0, v1

    sput-object v0, Lcom/igexin/sdk/PushBuildConfig;->sdk_conf_server_address_ip:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
