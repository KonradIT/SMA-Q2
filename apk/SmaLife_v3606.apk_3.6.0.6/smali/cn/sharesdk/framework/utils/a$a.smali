.class public final enum Lcn/sharesdk/framework/utils/a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/framework/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/sharesdk/framework/utils/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/sharesdk/framework/utils/a$a;

.field public static final enum b:Lcn/sharesdk/framework/utils/a$a;

.field private static final synthetic c:[Lcn/sharesdk/framework/utils/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/sharesdk/framework/utils/a$a;

    const-string v1, "HMAC_SHA1"

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/framework/utils/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/utils/a$a;->a:Lcn/sharesdk/framework/utils/a$a;

    new-instance v0, Lcn/sharesdk/framework/utils/a$a;

    const-string v1, "PLAINTEXT"

    invoke-direct {v0, v1, v3}, Lcn/sharesdk/framework/utils/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/utils/a$a;->b:Lcn/sharesdk/framework/utils/a$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/sharesdk/framework/utils/a$a;

    sget-object v1, Lcn/sharesdk/framework/utils/a$a;->a:Lcn/sharesdk/framework/utils/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcn/sharesdk/framework/utils/a$a;->b:Lcn/sharesdk/framework/utils/a$a;

    aput-object v1, v0, v3

    sput-object v0, Lcn/sharesdk/framework/utils/a$a;->c:[Lcn/sharesdk/framework/utils/a$a;

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

.method public static valueOf(Ljava/lang/String;)Lcn/sharesdk/framework/utils/a$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcn/sharesdk/framework/utils/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/utils/a$a;

    return-object v0
.end method

.method public static values()[Lcn/sharesdk/framework/utils/a$a;
    .locals 1

    sget-object v0, Lcn/sharesdk/framework/utils/a$a;->c:[Lcn/sharesdk/framework/utils/a$a;

    invoke-virtual {v0}, [Lcn/sharesdk/framework/utils/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/sharesdk/framework/utils/a$a;

    return-object v0
.end method
