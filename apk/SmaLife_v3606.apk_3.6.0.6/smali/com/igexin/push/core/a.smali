.class public Lcom/igexin/push/core/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:I

.field public static l:I

.field public static m:I

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Sdk/ImgCache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Sdk/WebCache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/a;->b:Ljava/lang/String;

    sput v2, Lcom/igexin/push/core/a;->c:I

    sput v3, Lcom/igexin/push/core/a;->d:I

    sput v4, Lcom/igexin/push/core/a;->e:I

    const/4 v0, 0x3

    sput v0, Lcom/igexin/push/core/a;->f:I

    const/4 v0, 0x4

    sput v0, Lcom/igexin/push/core/a;->g:I

    const/4 v0, 0x5

    sput v0, Lcom/igexin/push/core/a;->h:I

    const/4 v0, 0x6

    sput v0, Lcom/igexin/push/core/a;->i:I

    const/4 v0, 0x7

    sput v0, Lcom/igexin/push/core/a;->j:I

    sput v2, Lcom/igexin/push/core/a;->k:I

    sput v3, Lcom/igexin/push/core/a;->l:I

    sput v4, Lcom/igexin/push/core/a;->m:I

    const-string v0, "com.igexin.sdk.PushService"

    sput-object v0, Lcom/igexin/push/core/a;->n:Ljava/lang/String;

    const-string v0, "com.igexin.sdk.coordinator.SdkMsgService"

    sput-object v0, Lcom/igexin/push/core/a;->o:Ljava/lang/String;

    const-string v0, "com.igexin.sdk.coordinator.GexinMsgService"

    sput-object v0, Lcom/igexin/push/core/a;->p:Ljava/lang/String;

    return-void
.end method
