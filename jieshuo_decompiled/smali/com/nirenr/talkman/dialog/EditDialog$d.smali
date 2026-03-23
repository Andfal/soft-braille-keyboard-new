.class Lcom/nirenr/talkman/dialog/EditDialog$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field final synthetic b:Lcom/nirenr/talkman/dialog/EditDialog;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/EditDialog;Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/EditDialog$d;->b:Lcom/nirenr/talkman/dialog/EditDialog;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/EditDialog$d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance p1, Lcom/nirenr/talkman/dialog/SplitEditDialog;

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/EditDialog$d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/EditDialog$d;->b:Lcom/nirenr/talkman/dialog/EditDialog;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/EditDialog;->d(Lcom/nirenr/talkman/dialog/EditDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/dialog/EditDialog$d$a;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/EditDialog$d$a;-><init>(Lcom/nirenr/talkman/dialog/EditDialog$d;)V

    invoke-direct {p1, p2, v0, v1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;Lcom/nirenr/talkman/dialog/SplitEditDialog$onTextChangedListener;)V

    invoke-virtual {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->U()V

    return-void
.end method
