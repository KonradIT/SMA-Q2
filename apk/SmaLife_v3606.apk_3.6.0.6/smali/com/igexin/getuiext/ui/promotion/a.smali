.class public final enum Lcom/igexin/getuiext/ui/promotion/a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/igexin/getuiext/ui/promotion/a;

.field public static final enum b:Lcom/igexin/getuiext/ui/promotion/a;

.field public static final enum c:Lcom/igexin/getuiext/ui/promotion/a;

.field private static final synthetic e:[Lcom/igexin/getuiext/ui/promotion/a;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/igexin/getuiext/ui/promotion/a;

    const-string v1, "DOWNLOAD"

    const-string v2, "download"

    invoke-direct {v0, v1, v3, v2}, Lcom/igexin/getuiext/ui/promotion/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/igexin/getuiext/ui/promotion/a;->a:Lcom/igexin/getuiext/ui/promotion/a;

    new-instance v0, Lcom/igexin/getuiext/ui/promotion/a;

    const-string v1, "OPEN_LINK"

    const-string v2, "openlink"

    invoke-direct {v0, v1, v4, v2}, Lcom/igexin/getuiext/ui/promotion/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/igexin/getuiext/ui/promotion/a;->b:Lcom/igexin/getuiext/ui/promotion/a;

    new-instance v0, Lcom/igexin/getuiext/ui/promotion/a;

    const-string v1, "UNKNOWN"

    const-string v2, "unknown"

    invoke-direct {v0, v1, v5, v2}, Lcom/igexin/getuiext/ui/promotion/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/igexin/getuiext/ui/promotion/a;->c:Lcom/igexin/getuiext/ui/promotion/a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/igexin/getuiext/ui/promotion/a;

    sget-object v1, Lcom/igexin/getuiext/ui/promotion/a;->a:Lcom/igexin/getuiext/ui/promotion/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/igexin/getuiext/ui/promotion/a;->b:Lcom/igexin/getuiext/ui/promotion/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/igexin/getuiext/ui/promotion/a;->c:Lcom/igexin/getuiext/ui/promotion/a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/igexin/getuiext/ui/promotion/a;->e:[Lcom/igexin/getuiext/ui/promotion/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/igexin/getuiext/ui/promotion/a;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/igexin/getuiext/ui/promotion/a;
    .locals 1

    sget-object v0, Lcom/igexin/getuiext/ui/promotion/a;->a:Lcom/igexin/getuiext/ui/promotion/a;

    invoke-virtual {v0}, Lcom/igexin/getuiext/ui/promotion/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/igexin/getuiext/ui/promotion/a;->a:Lcom/igexin/getuiext/ui/promotion/a;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/igexin/getuiext/ui/promotion/a;->b:Lcom/igexin/getuiext/ui/promotion/a;

    invoke-virtual {v0}, Lcom/igexin/getuiext/ui/promotion/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/igexin/getuiext/ui/promotion/a;->b:Lcom/igexin/getuiext/ui/promotion/a;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/igexin/getuiext/ui/promotion/a;->c:Lcom/igexin/getuiext/ui/promotion/a;

    goto :goto_0
.end method

.method public static a()[Lcom/igexin/getuiext/ui/promotion/a;
    .locals 1

    sget-object v0, Lcom/igexin/getuiext/ui/promotion/a;->e:[Lcom/igexin/getuiext/ui/promotion/a;

    invoke-virtual {v0}, [Lcom/igexin/getuiext/ui/promotion/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/igexin/getuiext/ui/promotion/a;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/a;->d:Ljava/lang/String;

    return-object v0
.end method
