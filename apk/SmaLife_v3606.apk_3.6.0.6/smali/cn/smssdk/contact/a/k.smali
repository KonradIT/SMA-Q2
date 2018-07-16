.class public Lcn/smssdk/contact/a/k;
.super Lcn/smssdk/contact/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/smssdk/contact/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "data1"

    invoke-virtual {p0, v0}, Lcn/smssdk/contact/a/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "data4"

    invoke-virtual {p0, v0}, Lcn/smssdk/contact/a/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
