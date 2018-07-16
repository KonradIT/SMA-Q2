.class public Lcn/smssdk/SMSSDK;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/smssdk/SMSSDK$VerifyCodeReadListener;
    }
.end annotation


# static fields
.field public static final EVENT_GET_CONTACTS:I = 0x4

.field public static final EVENT_GET_FRIENDS_IN_APP:I = 0x6

.field public static final EVENT_GET_NEW_FRIENDS_COUNT:I = 0x7

.field public static final EVENT_GET_SUPPORTED_COUNTRIES:I = 0x1

.field public static final EVENT_GET_VERIFICATION_CODE:I = 0x2

.field public static final EVENT_GET_VOICE_VERIFICATION_CODE:I = 0x8

.field public static final EVENT_SUBMIT_USER_INFO:I = 0x5

.field public static final EVENT_SUBMIT_VERIFICATION_CODE:I = 0x3

.field public static final RESULT_COMPLETE:I = -0x1

.field public static final RESULT_ERROR:I

.field private static a:Lcn/smssdk/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 2

    sget-object v0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/a;

    if-nez v0, :cond_0

    const-string v0, "Please call SMSSDK.initSDK(Context, String, String) before any action."

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method public static getContacts(Z)V
    .locals 3

    invoke-static {}, Lcn/smssdk/SMSSDK;->a()V

    sget-object v0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/a;

    const/4 v1, 0x4

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/smssdk/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public static getCountry(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcn/smssdk/SMSSDK;->a()V

    sget-object v0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/a;

    invoke-virtual {v0, p0}, Lcn/smssdk/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCountryByMCC(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcn/smssdk/SMSSDK;->a()V

    sget-object v0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/a;

    invoke-virtual {v0, p0}, Lcn/smssdk/a;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFriendsInApp()V
    .locals 3

    invoke-static {}, Lcn/smssdk/SMSSDK;->a()V

    sget-object v0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/a;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/smssdk/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public static getGroupedCountryList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcn/smssdk/SMSSDK;->a()V

    sget-object v0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/a;

    invoke-virtual {v0}, Lcn/smssdk/a;->c()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static getNewFriendsCount()V
    .locals 3

    invoke-static {}, Lcn/smssdk/SMSSDK;->a()V

    sget-object v0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/a;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/smssdk/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public static getSupportedCountries()V
    .locals 3

    invoke-static {}, Lcn/smssdk/SMSSDK;->a()V

    sget-object v0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/smssdk/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public static getVerificationCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/smssdk/SMSSDK;->getVerificationCode(Ljava/lang/String;Ljava/lang/String;Lcn/smssdk/OnSendMessageHandler;)V

    return-void
.end method

.method public static getVerificationCode(Ljava/lang/String;Ljava/lang/String;Lcn/smssdk/OnSendMessageHandler;)V
    .locals 3

    const/4 v2, 0x2

    invoke-static {}, Lcn/smssdk/SMSSDK;->a()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    sget-object v1, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/a;

    invoke-virtual {v1, v2, v0}, Lcn/smssdk/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public static getVoiceVerifyCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcn/smssdk/SMSSDK;->a()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object v1, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/a;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcn/smssdk/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public static initSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/mob/tools/utils/Ln;->close()V

    sget-object v0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/a;

    if-nez v0, :cond_0

    new-instance v0, Lcn/smssdk/a;

    invoke-direct {v0, p0}, Lcn/smssdk/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/a;

    sget-object v0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/a;

    invoke-virtual {v0, p1, p2}, Lcn/smssdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/a;

    invoke-virtual {v0}, Lcn/smssdk/a;->a()V

    :cond_0
    return-void
.end method

.method public static readVerificationCode(Landroid/telephony/SmsMessage;Lcn/smssdk/SMSSDK$VerifyCodeReadListener;)V
    .locals 1

    invoke-static {}, Lcn/smssdk/SMSSDK;->a()V

    sget-object v0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/a;

    invoke-virtual {v0, p0, p1}, Lcn/smssdk/a;->a(Landroid/telephony/SmsMessage;Lcn/smssdk/SMSSDK$VerifyCodeReadListener;)V

    return-void
.end method

.method public static registerEventHandler(Lcn/smssdk/EventHandler;)V
    .locals 1

    invoke-static {}, Lcn/smssdk/SMSSDK;->a()V

    sget-object v0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/a;

    invoke-virtual {v0, p0}, Lcn/smssdk/a;->a(Lcn/smssdk/EventHandler;)V

    return-void
.end method

.method public static submitUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x5

    invoke-static {}, Lcn/smssdk/SMSSDK;->a()V

    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    sget-object v1, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/a;

    invoke-virtual {v1, v2, v0}, Lcn/smssdk/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public static submitVerificationCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x3

    invoke-static {}, Lcn/smssdk/SMSSDK;->a()V

    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    sget-object v1, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/a;

    invoke-virtual {v1, v2, v0}, Lcn/smssdk/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public static unregisterAllEventHandler()V
    .locals 1

    invoke-static {}, Lcn/smssdk/SMSSDK;->a()V

    sget-object v0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/a;

    invoke-virtual {v0}, Lcn/smssdk/a;->b()V

    return-void
.end method

.method public static unregisterEventHandler(Lcn/smssdk/EventHandler;)V
    .locals 1

    invoke-static {}, Lcn/smssdk/SMSSDK;->a()V

    sget-object v0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/a;

    invoke-virtual {v0, p0}, Lcn/smssdk/a;->b(Lcn/smssdk/EventHandler;)V

    return-void
.end method
