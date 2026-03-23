.class Lcom/nirenr/talkman/TalkManAccessibilityService$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService$a;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nirenr/talkman/TalkManAccessibilityService$a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService$a;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a$a;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$a;

    iput p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a$a;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$a;

    iget-object p1, p1, Lcom/nirenr/talkman/TalkManAccessibilityService$a;->b:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a$a;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$a;

    iget-object p1, p1, Lcom/nirenr/talkman/TalkManAccessibilityService$a;->a:Lorg/json/JSONArray;

    iget p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a$a;->a:I

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-static {p1}, Lk2/b0;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a$a;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$a;

    iget-object p2, p2, Lcom/nirenr/talkman/TalkManAccessibilityService$a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f070530

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a$a;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$a;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$a;->a:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lk2/b0;->l(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a$a;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$a;

    iget-object p1, p1, Lcom/nirenr/talkman/TalkManAccessibilityService$a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setProfiles()V

    return-void
.end method
