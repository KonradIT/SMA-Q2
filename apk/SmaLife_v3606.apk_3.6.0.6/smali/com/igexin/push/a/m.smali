.class public Lcom/igexin/push/a/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "socket://sdk.open.talk.igexin.com:5224"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "socket://sdk.open.talk.getui.net:5224"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "socket://sdk.open.talk.gepush.com:5224"

    aput-object v2, v0, v1

    sput-object v0, Lcom/igexin/push/a/m;->a:[Ljava/lang/String;

    const-string v0, "none"

    sput-object v0, Lcom/igexin/push/a/m;->b:Ljava/lang/String;

    const-string v0, "/sdcard/libs/"

    sput-object v0, Lcom/igexin/push/a/m;->c:Ljava/lang/String;

    return-void
.end method
