.class public Lcom/igexin/push/a/k;
.super Ljava/lang/Object;


# static fields
.field public static A:Z

.field public static a:[Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:[Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:I

.field public static f:I

.field public static g:J

.field public static h:I

.field public static i:I

.field public static j:Z

.field public static k:Z

.field public static l:Z

.field public static m:Z

.field public static n:Z

.field public static o:Z

.field public static p:Z

.field public static q:Z

.field public static r:Z

.field public static s:Z

.field public static t:J

.field public static u:Z

.field public static v:Z

.field public static w:Z

.field public static x:Lcom/igexin/push/core/bean/f;

.field public static y:Ljava/lang/String;

.field public static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/igexin/push/a/m;->a:[Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/a/k;->a:[Ljava/lang/String;

    const-string v0, "http://sdk.open.phone.igexin.com/api.php"

    sput-object v0, Lcom/igexin/push/a/k;->b:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "socket://sdk.open.talk.igexin.com:5224"

    aput-object v1, v0, v3

    sput-object v0, Lcom/igexin/push/a/k;->c:[Ljava/lang/String;

    const-string v0, "http://sdk.open.phone.igexin.com:8003/api.php"

    sput-object v0, Lcom/igexin/push/a/k;->d:Ljava/lang/String;

    sput-boolean v3, Lcom/igexin/push/a/k;->j:Z

    sput-boolean v2, Lcom/igexin/push/a/k;->k:Z

    sput-boolean v2, Lcom/igexin/push/a/k;->l:Z

    sput-boolean v2, Lcom/igexin/push/a/k;->m:Z

    sput-boolean v2, Lcom/igexin/push/a/k;->n:Z

    sput-boolean v2, Lcom/igexin/push/a/k;->o:Z

    sput-boolean v2, Lcom/igexin/push/a/k;->p:Z

    sput-boolean v2, Lcom/igexin/push/a/k;->q:Z

    sput-boolean v2, Lcom/igexin/push/a/k;->r:Z

    sput-boolean v3, Lcom/igexin/push/a/k;->s:Z

    const-wide/32 v0, 0x100000

    sput-wide v0, Lcom/igexin/push/a/k;->t:J

    sput-boolean v2, Lcom/igexin/push/a/k;->u:Z

    sput-boolean v2, Lcom/igexin/push/a/k;->v:Z

    sput-boolean v2, Lcom/igexin/push/a/k;->w:Z

    const-string v0, "none"

    sput-object v0, Lcom/igexin/push/a/k;->y:Ljava/lang/String;

    const-string v0, "none"

    sput-object v0, Lcom/igexin/push/a/k;->z:Ljava/lang/String;

    sput-boolean v3, Lcom/igexin/push/a/k;->A:Z

    return-void
.end method
