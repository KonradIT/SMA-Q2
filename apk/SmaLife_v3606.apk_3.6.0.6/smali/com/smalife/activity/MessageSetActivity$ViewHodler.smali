.class Lcom/smalife/activity/MessageSetActivity$ViewHodler;
.super Ljava/lang/Object;
.source "MessageSetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/MessageSetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHodler"
.end annotation


# instance fields
.field private app_icon:Landroid/widget/ImageView;

.field private app_name:Landroid/widget/TextView;

.field private app_select:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/smalife/activity/MessageSetActivity;


# direct methods
.method private constructor <init>(Lcom/smalife/activity/MessageSetActivity;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/smalife/activity/MessageSetActivity$ViewHodler;->this$0:Lcom/smalife/activity/MessageSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smalife/activity/MessageSetActivity;Lcom/smalife/activity/MessageSetActivity$ViewHodler;)V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/smalife/activity/MessageSetActivity$ViewHodler;-><init>(Lcom/smalife/activity/MessageSetActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/smalife/activity/MessageSetActivity$ViewHodler;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/smalife/activity/MessageSetActivity$ViewHodler;->app_icon:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$2(Lcom/smalife/activity/MessageSetActivity$ViewHodler;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/smalife/activity/MessageSetActivity$ViewHodler;->app_name:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$3(Lcom/smalife/activity/MessageSetActivity$ViewHodler;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/smalife/activity/MessageSetActivity$ViewHodler;->app_select:Landroid/widget/CheckBox;

    return-void
.end method

.method static synthetic access$4(Lcom/smalife/activity/MessageSetActivity$ViewHodler;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/smalife/activity/MessageSetActivity$ViewHodler;->app_icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/smalife/activity/MessageSetActivity$ViewHodler;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/smalife/activity/MessageSetActivity$ViewHodler;->app_name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/smalife/activity/MessageSetActivity$ViewHodler;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/smalife/activity/MessageSetActivity$ViewHodler;->app_select:Landroid/widget/CheckBox;

    return-object v0
.end method
