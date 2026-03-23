.class Lcom/nirenr/talkman/dialog/d$e$c$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/d$e$c$b;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/d$e$c$b;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/d$e$c$b;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/d$e$c$b$a;->a:Lcom/nirenr/talkman/dialog/d$e$c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d$e$c$b$a;->a:Lcom/nirenr/talkman/dialog/d$e$c$b;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/d$e$c$b;->a:Lcom/nirenr/talkman/dialog/d$e$c;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/d$e$c;->a:Lcom/nirenr/talkman/dialog/d$e;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/d$e;->a:Lcom/nirenr/talkman/dialog/d;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/d;->c(Lcom/nirenr/talkman/dialog/d;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/dialog/d$e$c$b$a$a;

    invoke-direct {v1, p0, p1}, Lcom/nirenr/talkman/dialog/d$e$c$b$a$a;-><init>(Lcom/nirenr/talkman/dialog/d$e$c$b$a;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
