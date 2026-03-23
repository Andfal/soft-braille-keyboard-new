.class Lh2/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/b;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Landroid/content/DialogInterface;

.field final synthetic c:Lh2/b;


# direct methods
.method constructor <init>(Lh2/b;Landroid/content/DialogInterface;)V
    .locals 0

    iput-object p1, p0, Lh2/b$a;->c:Lh2/b;

    iput-object p2, p0, Lh2/b$a;->b:Landroid/content/DialogInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic a(Lh2/b$a;)Z
    .locals 0

    iget-boolean p0, p0, Lh2/b$a;->a:Z

    return p0
.end method

.method static bridge synthetic b(Lh2/b$a;Z)V
    .locals 0

    iput-boolean p1, p0, Lh2/b$a;->a:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setClearNode(Z)V

    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->d(Lh2/b;)I

    move-result v0

    const/16 v2, 0x17

    const v3, 0x1e240

    const/4 v4, 0x4

    const-wide/16 v5, 0x1f4

    const/16 v7, 0x14

    const v8, 0x7f07038d

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-static {v0}, Lcom/nirenr/talkman/ai/b;->b(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    goto/16 :goto_5

    :pswitch_1
    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    const-string v0, "\u8bf7\u8bc6\u522b\u56fe\u4e2d\u6240\u6709\u672a\u9009\u4e2d\u7684\u590d\u9009\u6846\uff0c\u8fd4\u56de\u5176\u5728\u56fe\u50cf\u4e2d\u7684\u7edd\u5bf9\u50cf\u7d20\u5750\u6807\uff08\u4e2d\u5fc3\u70b9\uff09\u53ca\u56fe\u7247\u6574\u4f53\u5c3a\u5bf8\uff0c\u7ed3\u679c\u8bf7\u4e25\u683c\u6309\u4ee5\u4e0b JSON \u683c\u5f0f\u8f93\u51fa\uff1a\n{\n\"w\": \u56fe\u7247\u5bbd\u5ea6, h=\u56fe\u7247\u9ad8\u5ea6,\n\"pts\": [[x1, y1], [x2, y2], ...]\n}\n\u6ce8\u610f\uff1a\u4ec5\u8f93\u51fa JSON\uff0c\u4e0d\u8981\u4efb\u4f55\u89e3\u91ca\u6216\u989d\u5916\u6587\u5b57\u3002"

    sput-object v0, Lcom/day/BigModelNew;->MyQuestion:Ljava/lang/String;

    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    new-instance v1, Lh2/b$a$c;

    invoke-direct {v1, p0}, Lh2/b$a$c;-><init>(Lh2/b$a;)V

    invoke-virtual {v0, v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->youTu(ILcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    goto/16 :goto_5

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \u4f60\u662f\u4e00\u4e2a\u56fe\u7247\u5206\u6790\u4e13\u5bb6,\u64c5\u957f\u5206\u6790\u624b\u673a\u622a\u56fe\uff0c\u53ef\u4ee5\u6839\u636e\u624b\u673a\u622a\u56fe\u7ed9\u51fa\u56fe\u7247\u4e2d\u6587\u5b57\uff0c\u6309\u94ae\uff0c\u590d\u9009\u6846\uff0c\u5f00\u5173\uff0cicon\u7684\u5185\u5bb9\u4ee5\u53ca\u4f4d\u7f6e\uff1b \u8bf7\u6839\u636e\u63d0\u4f9b\u7684\u56fe\u7247\u8bf7\u8ba1\u7b97\u51faimage_width\u56fe\u7247\u5bbd\u5ea6\uff08px\uff09\u3001image_height\u56fe\u7247\u9ad8\u5ea6\uff08px\uff09\u4ee5\u53ca\u63cf\u8ff0\u51fa\u56fe\u7247\u4e2d\u6587\u5b57\uff0cicon\u7b49\u4fe1\u606f\u7684\u4f4d\u7f6e; \n                \u54cd\u5e94\u683c\u5f0f\u5982\u4e0b:\n                {\n                  \"image_width\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v1}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androlua/LuaService;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/androlua/LuaUtil;->getRatio()F

    move-result v3

    mul-float v1, v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n                  \"image_height\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v1}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androlua/LuaService;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/androlua/LuaUtil;->getRatio()F

    move-result v3

    mul-float v1, v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n                  \"elements\": [\n                    {\n                      \"type\": \"text\",\n                      \"content\": \"KB/s\",\n                      \"x\": 514,\n                      \"y\": 208,\n                      \"w\": 36,\n                      \"h\": 16\n                    }\n                    {\n                      \"type\": \"text\",\n                      \"content\": \"\u79fb\u52a8\u6570\u636e\",\n                      \"x\": 508,\n                      \"y\": 312,\n                      \"w\": 120,\n                      \"h\": 28\n                    },\n                    {\n                      \"type\": \"text\",\n                      \"content\": \"\u4e0d\u53ef\u7528\",\n                      \"x\": 508,\n                      \"y\": 348,\n                      \"w\": 80,\n                      \"h\": 20\n                    },\n                    {\n                      \"type\": \"text\",\n                      \"content\": \"\u6682\u65e0\u64ad\u653e\",\n                      \"x\": 154,\n                      \"y\": 570,\n                      \"w\": 100,\n                      \"h\": 28\n                    },\n                    {\n                      \"type\": \"icon\",\n                      \"content\": \"Wi-Fi\",\n                      \"x\": 94,\n                      \"y\": 312,\n                      \"w\": 40,\n                      \"h\": 40\n                    }\n                }\n                \u8981\u6c42:1.\u54cd\u5e94\u5185\u5bb9\u5fc5\u987b\u4e25\u683c\u4e3a\u793a\u4f8bjson\u683c\u5f0f 2.\u5fc5\u987b\u7ed9\u51fa\u56fe\u7247\u4e2d\u5185\u5bb9\u7684\u4f4d\u7f6e\u4ee5\u53ca\u5185\u5bb9\u5c5e\u6027,\u6ce8\u610f\uff1a\u4ec5\u8f93\u51fa JSON\uff0c\u4e0d\u8981\u4efb\u4f55\u89e3\u91ca\u6216\u989d\u5916\u6587\u5b57\u3002"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/day/BigModelNew;->MyQuestion:Ljava/lang/String;

    const-string v0, "\u89d2\u8272\u5b9a\u4e49\uff1a \u4f60\u662f\u4e00\u4f4d\u9876\u5c16\u7684\u79fb\u52a8\u7aef UI \u81ea\u52a8\u5316\u4e0e\u56fe\u50cf\u5206\u6790\u4e13\u5bb6\u3002\u4f60\u64c5\u957f\u7cbe\u786e\u89e3\u6790\u667a\u80fd\u624b\u673a\u622a\u56fe\uff0c\u80fd\u591f\u8bc6\u522b\u6781\u5c0f\u7684\u6587\u5b57\u548c\u5404\u7c7b\u529f\u80fd\u56fe\u6807\uff08Icon\uff09\uff0c\u5e76\u8ba1\u7b97\u5176\u5728\u50cf\u7d20\u7ea7\u5750\u6807\u7cfb\u4e0b\u7684\u7cbe\u786e\u4f4d\u7f6e\u3002\n\n\u4efb\u52a1\u63cf\u8ff0\uff1a \u8bf7\u5206\u6790\u63d0\u4f9b\u7684\u624b\u673a\u622a\u56fe\uff0c\u63d0\u53d6\u6240\u6709\u5173\u952e\u7684 UI \u5143\u7d20\uff08\u6587\u5b57\u548c\u56fe\u6807\uff09\u3002\n\n\u83b7\u53d6\u5c3a\u5bf8\uff1a \u9996\u5148\u786e\u5b9a\u56fe\u7247\u7684\u539f\u59cb\u50cf\u7d20\u5bbd\u5ea6\uff08image_width\uff09\u4e0e\u9ad8\u5ea6\uff08image_height\uff09\u3002\n\n\u5143\u7d20\u63d0\u53d6\uff1a \u626b\u63cf\u56fe\u7247\uff0c\u8bc6\u522b\u6240\u6709\u53ef\u89c6\u7684\u6587\u5b57\u5185\u5bb9\u548c\u529f\u80fd\u6027\u56fe\u6807\u3002\n\n\u7cbe\u51c6\u5b9a\u4f4d\uff1a \u4e3a\u6bcf\u4e2a\u5143\u7d20\u8ba1\u7b97\u5176 \u5de6\u4e0a\u89d2\u5750\u6807 (x, y) \u4ee5\u53ca \u89c6\u89c9\u8fb9\u754c\u5c3a\u5bf8 (w, h)\u3002\u6240\u6709\u6570\u503c\u5fc5\u987b\u57fa\u4e8e\u56fe\u7247\u7684\u7edd\u5bf9\u50cf\u7d20\u5750\u6807\uff08\u975e\u5f52\u4e00\u5316\u6bd4\u4f8b\uff09\u3002\n\n\u5c5e\u6027\u5206\u7c7b\uff1a - type: \u6587\u5b57\u6807\u8bb0\u4e3a \"text\"\uff1b\u56fe\u6807\u6807\u8bb0\u4e3a \"icon\"\uff08\u5982 Wi-Fi\u3001\u7535\u6c60\u3001\u8bbe\u7f6e\u7b49\uff09\u3002\n\ncontent (\u6838\u5fc3\u8981\u6c42): - \u5bf9\u4e8e\u666e\u901a\u6587\u5b57\uff1a\u76f4\u63a5\u586b\u5199\u6587\u672c\u5185\u5bb9\u3002\n\n\u5bf9\u4e8e\u56fe\u6807\uff1a\u586b\u5199\u5176\u4ee3\u8868\u7684\u529f\u80fd\u542b\u4e49\uff08\u5982 \"Wi-Fi\"\uff09\u3002\n\n\u5bf9\u4e8e\u5355\u9009\u6846/\u590d\u9009\u6846/\u5f00\u5173\uff1a \u683c\u5f0f\u5fc5\u987b\u4e3a \"[\u72b6\u6001]\u7ec4\u4ef6\u542b\u4e49\"\u3002\u4f8b\u5982 \"[\u672a\u9009\u62e9]\u8bb0\u4f4f\u5bc6\u7801\" \u6216 \"[\u5df2\u9009\u62e9]\u5f00\u542f\u63a8\u9001\"\u3002\n\n\u72b6\u6001\u5224\u5b9a\uff1a \u6846\u5185\u4e3a\u7a7a\u3001\u80cc\u666f\u900f\u660e\u4e14\u65e0\u52fe\u70b9\u6807\u8bb0\uff0c\u89c6\u4e3a \"\u672a\u9009\u62e9\"\uff1b\u6846\u5185\u6709\u52fe\u3001\u70b9\u6216\u5bf9\u6bd4\u5ea6\u660e\u663e\u7684\u586b\u5145\u8272\uff0c\u89c6\u4e3a \"\u5df2\u9009\u62e9\"\u3002\n\n\u5f3a\u5236\u7ea6\u675f\uff1a\n\n\u5750\u6807\u51c6\u786e\u6027\uff1a \u8bf7\u53cd\u590d\u6821\u5bf9\u5750\u6807\uff0c\u786e\u4fdd x, y \u4f4d\u4e8e\u8be5\u5143\u7d20\u7684\u5de6\u4e0a\u89d2\uff0c\u8bef\u5dee\u9700\u63a7\u5236\u5728 5 \u50cf\u7d20\u4ee5\u5185\u3002\n\n\u6392\u9664\u9879\uff1a \u5ffd\u7565\u7eaf\u88c5\u9970\u6027\u3001\u65e0\u5b9e\u9645\u529f\u80fd\u7684\u5e95\u7eb9\u6216\u6a21\u7cca\u5143\u7d20\u3002\n\n\u8f93\u51fa\u683c\u5f0f\uff1a \u7981\u6b62\u4efb\u4f55\u5f00\u573a\u767d\u6216\u89e3\u91ca\u6587\u5b57\u3002\u54cd\u5e94\u5185\u5bb9\u5fc5\u987b\u4e25\u683c\u6309\u7167\u4ee5\u4e0b JSON \u683c\u5f0f\u8f93\u51fa\uff0c\u786e\u4fdd\u5176\u53ef\u88ab\u811a\u672c\u76f4\u63a5\u89e3\u6790\u3002\n\n\u54cd\u5e94\u683c\u5f0f\u793a\u4f8b\uff1a\n\nJSON\n{\n  \"image_width\": 768,\n  \"image_height\": 1692,\n  \"elements\": [\n    {\n      \"type\": \"text\",\n      \"content\": \"\u79fb\u52a8\u6570\u636e\",\n      \"x\": 508,\n      \"y\": 312,\n      \"w\": 120,\n      \"h\": 28\n    },\n    {\n      \"type\": \"icon\",\n      \"content\": \"Wi-Fi\",\n      \"x\": 94,\n      \"y\": 312,\n      \"w\": 40,\n      \"h\": 40\n    }\n  ]\n}"

    sput-object v0, Lcom/day/BigModelNew;->MyQuestion:Ljava/lang/String;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v1}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v1}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    const v3, 0x7f070973

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v1}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    const v3, 0x7f070095

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lh2/b$a$l;

    invoke-direct {v3, p0}, Lh2/b$a$l;-><init>(Lh2/b$a;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v1, Lh2/b$a$a;

    invoke-direct {v1, p0, v0}, Lh2/b$a$a;-><init>(Lh2/b$a;Landroid/app/AlertDialog;)V

    iget-object v3, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v3}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lh2/b$a;->a:Z

    iget-object v3, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v3}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v3

    new-instance v4, Lh2/b$a$b;

    invoke-direct {v4, p0, v1, v0}, Lh2/b$a$b;-><init>(Lh2/b$a;Ljava/lang/Runnable;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v2, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->youTu(ILcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    goto/16 :goto_5

    :pswitch_3
    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const-string v1, "\u89c6\u9891\u63cf\u8ff0"

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->execute(Ljava/lang/String;)Z

    goto/16 :goto_5

    :pswitch_4
    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate(Z)V

    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    new-instance v1, Lh2/b$a$k;

    invoke-direct {v1, p0}, Lh2/b$a$k;-><init>(Lh2/b$a;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate(Z)V

    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    new-instance v1, Lh2/b$a$j;

    invoke-direct {v1, p0}, Lh2/b$a$j;-><init>(Lh2/b$a;)V

    :goto_0
    invoke-virtual {v0, v1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSpeechRecognitionListener(Lcom/nirenr/talkman/SpeechRecognitionListener;I)V

    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->startListening()V

    goto/16 :goto_5

    :pswitch_6
    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lh2/b$a;->c:Lh2/b;

    invoke-virtual {v0, v7, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->youTu(ILcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    goto/16 :goto_5

    :pswitch_7
    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v1}, Lh2/b;->b(Lh2/b;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    iget-object v2, p0, Lh2/b$a;->c:Lh2/b;

    goto/16 :goto_2

    :pswitch_8
    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lh2/b$a;->c:Lh2/b;

    invoke-virtual {v0, v4, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->youTu(ILcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    goto/16 :goto_5

    :pswitch_9
    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v1}, Lh2/b;->b(Lh2/b;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    iget-object v2, p0, Lh2/b$a;->c:Lh2/b;

    invoke-virtual {v0, v4, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->youTu(ILandroid/view/accessibility/AccessibilityNodeInfo;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    goto/16 :goto_5

    :pswitch_a
    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const/16 v1, 0xa

    goto :goto_1

    :pswitch_b
    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const/16 v1, 0xc

    :goto_1
    iget-object v2, p0, Lh2/b$a;->c:Lh2/b;

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->youTu(ILcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    goto/16 :goto_5

    :pswitch_c
    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    const-string v0, "\u4e00\u53e5\u8bdd\u8bf4\u660e\u8fd9\u662f\u4ec0\u4e48\u56fe\u6807"

    sput-object v0, Lcom/day/BigModelNew;->MyQuestion:Ljava/lang/String;

    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v1}, Lh2/b;->b(Lh2/b;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    new-instance v2, Lh2/b$a$i;

    invoke-direct {v2, p0}, Lh2/b$a$i;-><init>(Lh2/b$a;)V

    :goto_2
    invoke-virtual {v0, v7, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->youTu(ILandroid/view/accessibility/AccessibilityNodeInfo;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    goto/16 :goto_5

    :pswitch_d
    new-instance v0, Lcom/androlua/LuaDialog;

    iget-object v1, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v1}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/androlua/LuaDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v1}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    const v2, 0x7f070410

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androlua/LuaDialog;->setTitle(Ljava/lang/CharSequence;)V

    sget-object v1, Lh2/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/androlua/LuaDialog;->setItems(Ljava/util/List;)V

    iget-object v1, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v1}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    const v2, 0x7f070104

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lh2/b$a$f;

    invoke-direct {v2, p0}, Lh2/b$a$f;-><init>(Lh2/b$a;)V

    invoke-virtual {v0, v1, v2}, Lcom/androlua/LuaDialog;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lh2/b$a$g;

    invoke-direct {v1, p0}, Lh2/b$a$g;-><init>(Lh2/b$a;)V

    invoke-virtual {v0, v1}, Lcom/androlua/LuaDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v1}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    const v2, 0x7f0700be

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/androlua/LuaDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/androlua/LuaDialog;->show()V

    invoke-virtual {v0}, Lcom/androlua/LuaDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lh2/b$a$h;

    invoke-direct {v2, p0, v0}, Lh2/b$a$h;-><init>(Lh2/b$a;Lcom/androlua/LuaDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_5

    :pswitch_e
    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v1}, Lh2/b;->b(Lh2/b;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    iget-object v2, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0, v1, v2}, Lcom/nirenr/talkman/util/VerificationCode;->c(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;Lcom/nirenr/talkman/util/VerificationCode$VerificationCodeListener;)V

    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lh2/b$a$e;

    invoke-direct {v1, p0}, Lh2/b$a$e;-><init>(Lh2/b$a;)V

    goto :goto_4

    :pswitch_f
    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v1}, Lh2/b;->b(Lh2/b;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    iget-object v2, p0, Lh2/b$a;->c:Lh2/b;

    const/4 v3, 0x3

    goto :goto_3

    :pswitch_10
    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v1}, Lh2/b;->b(Lh2/b;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    iget-object v2, p0, Lh2/b$a;->c:Lh2/b;

    const/4 v3, 0x2

    :goto_3
    invoke-virtual {v0, v3, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->youTu(ILandroid/view/accessibility/AccessibilityNodeInfo;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    goto :goto_5

    :pswitch_11
    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v2, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v2}, Lh2/b;->b(Lh2/b;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    iget-object v3, p0, Lh2/b$a;->c:Lh2/b;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->youTu(ILandroid/view/accessibility/AccessibilityNodeInfo;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    goto :goto_5

    :pswitch_12
    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v1}, Lh2/b;->b(Lh2/b;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0, v1}, Lcom/nirenr/talkman/util/d;->f(Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V

    iget-object v0, p0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lh2/b$a$d;

    invoke-direct {v1, p0}, Lh2/b$a$d;-><init>(Lh2/b$a;)V

    :goto_4
    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
