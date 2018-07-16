.class Lcom/smalife/activity/WelcomeActivity$1;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/WelcomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/WelcomeActivity$1;->this$0:Lcom/smalife/activity/WelcomeActivity;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 73
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "srolled"    # F
    .param p3, "id"    # I

    .prologue
    .line 68
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/smalife/activity/WelcomeActivity$1;->this$0:Lcom/smalife/activity/WelcomeActivity;

    invoke-static {v0, p1}, Lcom/smalife/activity/WelcomeActivity;->access$0(Lcom/smalife/activity/WelcomeActivity;I)V

    .line 63
    return-void
.end method
