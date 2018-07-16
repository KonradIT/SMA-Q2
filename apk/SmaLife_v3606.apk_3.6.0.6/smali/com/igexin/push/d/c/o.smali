.class public Lcom/igexin/push/d/c/o;
.super Lcom/igexin/push/d/c/e;


# instance fields
.field public a:J

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/igexin/push/d/c/e;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/igexin/push/d/c/o;->b:Ljava/lang/String;

    const/16 v0, 0x9

    iput v0, p0, Lcom/igexin/push/d/c/o;->i:I

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/igexin/a/a/b/g;->d([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/push/d/c/o;->a:J

    const/16 v0, 0x8

    array-length v1, p1

    if-le v1, v0, :cond_0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x9

    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v1, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lcom/igexin/push/d/c/o;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    add-int/lit8 v0, v0, 0x9

    :cond_0
    return-void

    :catch_0
    move-exception v1

    const-string v1, ""

    iput-object v1, p0, Lcom/igexin/push/d/c/o;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public d()[B
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [B

    iget-wide v2, p0, Lcom/igexin/push/d/c/o;->a:J

    const/4 v1, 0x0

    invoke-static {v2, v3, v0, v1}, Lcom/igexin/a/a/b/g;->a(J[BI)I

    return-object v0
.end method
