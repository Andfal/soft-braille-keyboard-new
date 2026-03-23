.class Lcom/nirenr/talkman/settings/TimerManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/TimerManager;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/TimerManager;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/TimerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/TimerManager$1;->a:Lcom/nirenr/talkman/settings/TimerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object p1, p0, Lcom/nirenr/talkman/settings/TimerManager$1;->a:Lcom/nirenr/talkman/settings/TimerManager;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/TimerManager;->e(Lcom/nirenr/talkman/settings/TimerManager;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/nirenr/talkman/settings/TimerManager$1;->a:Lcom/nirenr/talkman/settings/TimerManager;

    invoke-static {v2}, Lcom/nirenr/talkman/settings/TimerManager;->d(Lcom/nirenr/talkman/settings/TimerManager;)J

    move-result-wide v2

    invoke-static {p1, v0, v1, v2, v3}, Lcom/nirenr/talkman/settings/TimerManager;->g(Lcom/nirenr/talkman/settings/TimerManager;JJ)V

    return-void
.end method
