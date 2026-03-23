.class Lcom/nirenr/talkman/settings/TimerRun$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/TimerRun;->i(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcom/nirenr/talkman/settings/TimerRun;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/TimerRun;Landroid/widget/TextView;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/TimerRun$5;->c:Lcom/nirenr/talkman/settings/TimerRun;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/TimerRun$5;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/nirenr/talkman/settings/TimerRun$5;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance p1, Lcom/nirenr/talkman/dialog/FileDialog;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/TimerRun$5;->c:Lcom/nirenr/talkman/settings/TimerRun;

    new-instance v1, Lcom/nirenr/talkman/settings/TimerRun$5$1;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/settings/TimerRun$5$1;-><init>(Lcom/nirenr/talkman/settings/TimerRun$5;)V

    iget-object v2, p0, Lcom/nirenr/talkman/settings/TimerRun$5;->b:[Ljava/lang/String;

    aget-object p2, v2, p2

    invoke-direct {p1, v0, v1, p2}, Lcom/nirenr/talkman/dialog/FileDialog;-><init>(Landroid/content/Context;Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;Ljava/lang/String;)V

    return-void
.end method
