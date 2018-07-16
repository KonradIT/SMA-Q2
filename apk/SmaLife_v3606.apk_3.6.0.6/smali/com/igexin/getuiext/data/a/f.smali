.class public final enum Lcom/igexin/getuiext/data/a/f;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/igexin/getuiext/data/a/f;

.field public static final enum b:Lcom/igexin/getuiext/data/a/f;

.field private static final synthetic c:[Lcom/igexin/getuiext/data/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/igexin/getuiext/data/a/f;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v2}, Lcom/igexin/getuiext/data/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/getuiext/data/a/f;->a:Lcom/igexin/getuiext/data/a/f;

    new-instance v0, Lcom/igexin/getuiext/data/a/f;

    const-string v1, "DIFF"

    invoke-direct {v0, v1, v3}, Lcom/igexin/getuiext/data/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/getuiext/data/a/f;->b:Lcom/igexin/getuiext/data/a/f;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/igexin/getuiext/data/a/f;

    sget-object v1, Lcom/igexin/getuiext/data/a/f;->a:Lcom/igexin/getuiext/data/a/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/igexin/getuiext/data/a/f;->b:Lcom/igexin/getuiext/data/a/f;

    aput-object v1, v0, v3

    sput-object v0, Lcom/igexin/getuiext/data/a/f;->c:[Lcom/igexin/getuiext/data/a/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/igexin/getuiext/data/a/f;
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DIFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/igexin/getuiext/data/a/f;->b:Lcom/igexin/getuiext/data/a/f;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/igexin/getuiext/data/a/f;->a:Lcom/igexin/getuiext/data/a/f;

    goto :goto_0
.end method

.method public static a()[Lcom/igexin/getuiext/data/a/f;
    .locals 1

    sget-object v0, Lcom/igexin/getuiext/data/a/f;->c:[Lcom/igexin/getuiext/data/a/f;

    invoke-virtual {v0}, [Lcom/igexin/getuiext/data/a/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/igexin/getuiext/data/a/f;

    return-object v0
.end method
