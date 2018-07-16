.class Lcom/smalife/activity/HelpActivity$1;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/HelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/HelpActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/HelpActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/HelpActivity$1;->this$0:Lcom/smalife/activity/HelpActivity;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 72
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "srolled"    # F
    .param p3, "id"    # I

    .prologue
    .line 67
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/smalife/activity/HelpActivity$1;->this$0:Lcom/smalife/activity/HelpActivity;

    invoke-static {v0, p1}, Lcom/smalife/activity/HelpActivity;->access$0(Lcom/smalife/activity/HelpActivity;I)V

    .line 62
    return-void
.end method
