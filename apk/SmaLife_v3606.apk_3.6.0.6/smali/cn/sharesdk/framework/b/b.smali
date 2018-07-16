.class public final enum Lcn/sharesdk/framework/b/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/sharesdk/framework/b/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/sharesdk/framework/b/b;

.field public static final enum b:Lcn/sharesdk/framework/b/b;

.field private static final synthetic c:[Lcn/sharesdk/framework/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/sharesdk/framework/b/b;

    const-string v1, "FINISH_SHARE"

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/framework/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/b/b;->a:Lcn/sharesdk/framework/b/b;

    new-instance v0, Lcn/sharesdk/framework/b/b;

    const-string v1, "BEFORE_SHARE"

    invoke-direct {v0, v1, v3}, Lcn/sharesdk/framework/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/b/b;->b:Lcn/sharesdk/framework/b/b;

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/sharesdk/framework/b/b;

    sget-object v1, Lcn/sharesdk/framework/b/b;->a:Lcn/sharesdk/framework/b/b;

    aput-object v1, v0, v2

    sget-object v1, Lcn/sharesdk/framework/b/b;->b:Lcn/sharesdk/framework/b/b;

    aput-object v1, v0, v3

    sput-object v0, Lcn/sharesdk/framework/b/b;->c:[Lcn/sharesdk/framework/b/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/sharesdk/framework/b/b;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcn/sharesdk/framework/b/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/b/b;

    return-object v0
.end method

.method public static values()[Lcn/sharesdk/framework/b/b;
    .locals 1

    sget-object v0, Lcn/sharesdk/framework/b/b;->c:[Lcn/sharesdk/framework/b/b;

    invoke-virtual {v0}, [Lcn/sharesdk/framework/b/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/sharesdk/framework/b/b;

    return-object v0
.end method
