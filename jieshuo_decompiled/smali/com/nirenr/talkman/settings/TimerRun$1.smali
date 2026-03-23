.class Lcom/nirenr/talkman/settings/TimerRun$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/TimerRun;->f(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/nirenr/talkman/settings/TimerRun;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/TimerRun;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/TimerRun$1;->b:Lcom/nirenr/talkman/settings/TimerRun;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/TimerRun$1;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/nirenr/talkman/settings/TimerRun$1;->b:Lcom/nirenr/talkman/settings/TimerRun;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/TimerRun$1;->a:Landroid/widget/TextView;

    const/16 v1, 0x18

    invoke-static {p1, v0, v1}, Lcom/nirenr/talkman/settings/TimerRun;->c(Lcom/nirenr/talkman/settings/TimerRun;Landroid/widget/TextView;I)V

    return-void
.end method
