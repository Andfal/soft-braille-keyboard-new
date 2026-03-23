.class Lcom/nirenr/talkman/TalkManAccessibilityService$u2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->copy(Ljava/lang/CharSequence;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$u2;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$u2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$u2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance p1, Lcom/nirenr/talkman/dialog/EditDialog;

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$u2;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070304

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$u2;->a:Ljava/lang/String;

    new-instance v2, Lcom/nirenr/talkman/TalkManAccessibilityService$u2$a;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/TalkManAccessibilityService$u2$a;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService$u2;)V

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    invoke-virtual {p1}, Lcom/nirenr/talkman/dialog/EditDialog;->g()V

    return-void
.end method
